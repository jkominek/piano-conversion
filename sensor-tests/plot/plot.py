#!/usr/bin/env python3

import numpy as np
import matplotlib.pyplot as plt
from matplotlib import animation
import argparse

#plt.style.use('fivethirtyeight')
#plt.xkcd() 

parser = argparse.ArgumentParser()
parser.add_argument("--filename")
parser.add_argument("--dummy", action='store_true')
args = parser.parse_args()

MAX_VAL=4095

def plot(args):    
    s1 = np.loadtxt(args.filename, usecols=0).flatten()
    s2 = np.loadtxt(args.filename, usecols=1).flatten()
    s3 = np.loadtxt(args.filename, usecols=2).flatten()

    t = dt * np.arange(len(s1))

    fig, axs = plt.subplots(2, 1)
    axs[0].plot(t, s1, t, s2, t, s3)
    axs[0].legend(["CNY70", "QRE1113", "EAITRCA6"], ncol=1, bbox_to_anchor=(1,1), loc="upper left")
    axs[0].set_xlim(0, t[-1])
    axs[0].set_xlabel('time')
    axs[0].set_ylim(bottom=0)
    axs[0].set_ylabel('signals')
    axs[0].grid(True)

    try:
        cxy1, f1 = axs[1].cohere(s1, s2, 256, 1. / dt, label="\nCNY70\nQRE1113\n")
        cxy2, f2 = axs[1].cohere(s1, s3, 256, 1. / dt, label="\nCNY70\nEAITRCA6\n")
        cxy3, f3 = axs[1].cohere(s2, s3, 256, 1. / dt, label="\nQRE1113\nEAITRCA6\n")
        axs[1].set_xlim(0,2)
        axs[1].legend(ncol=1, bbox_to_anchor=(1,1), loc="upper left")
    except ValueError:
        pass
    axs[1].set_ylabel('coherence')

    fig.tight_layout()

    plt.savefig(args.filename[:-4] + ".png", dpi=300, bbox_inches='tight')

def display_scroll(data_gen):
    def init():
        ax.set_ylim(0, MAX_VAL)
        ax.set_xlim(0, 10)
        for line in lines:
            line.set_data([],[])
        return lines

    def run(data):
        # update the data
        t, *y = data
        xdata.append(t)
        for i, yi in enumerate(y):
            ydata[i].append(yi)
        xmin, xmax = ax.get_xlim()

        if t >= xmax:
            ax.set_xlim(xmin+dt, xmax+dt)
            ax.figure.canvas.draw()

        for i,line in enumerate(lines):
            line.set_data(xdata, ydata[i])
        return lines,

    fig, ax = plt.subplots()
    line, = ax.plot([], [], lw=2)
    ax.grid()
    xdata = []
    ydata = [] 
    for i in range(KEY_SENSORS):
        ydata.append([])

    lines = []
    for i in range(KEY_SENSORS):
        lines.append(ax.plot([],[],lw=2)[0])

    ani = animation.FuncAnimation(fig, run, data_gen, blit=False, interval=10, repeat=False, init_func=init)
    plt.show()

import serial, time, parse
def get_USB_data():
    not_connected = True
    tries = 0
    while(not_connected):
        try:
            ser = serial.Serial(
              port='/dev/ttyUSB0',
              baudrate = 115200,
              parity=serial.PARITY_NONE,
              stopbits=serial.STOPBITS_ONE,
              bytesize=serial.EIGHTBITS,
              timeout=1
            )
            prefix = ser.read()
            to_be_yield = ser.read
        except serial.serialutil.SerialException as e:
            if "could not open port /dev/ttyUSB0" in str(e):
                if tries == 10:
                    print("too many failures, bailing out")
                    prefix = "Interval of 50ms. Number of ADC is 3"
                    def to_be_yield():
                        output = ""
                        for i in range(int(prefix[-1])):
                            output += str(100*i) + ","
                        yield output[:-1]
                    not_connected = False
                else:
                    print("could not open port /dev/ttyUSB0, retrying")
                    tries += 1
                    time.sleep(1)
            else:
                raise e

    yield prefix                      # need to parse
    while(True):
        yield to_be_yield()           # need to parse


if args.filename:
    plot(args)
else:
    if args.dummy:
        dt = 0.05
        KEY_SENSORS=9
        import random
        def random_data():
            t = -dt
            while (True):
                t +=dt
                output = [t]
                for i in range(KEY_SENSORS):
                    output.append(random.randrange(MAX_VAL))
                yield output
        data = random_data
    else:
        dt, KEY_SENSORS = get_USB_data()
        def real_data():
            t = -dt
            while (True):
                t +=dt
                output = [t]
                curr_data = get_USB_data()
                for d in curr_data:
                    output.append(d)
                yield output
        data = real_data

    display_scroll(data)


