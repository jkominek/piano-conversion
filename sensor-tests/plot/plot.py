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

dt = 0.05
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
        del xdata[:]
        del ydata[:]
        line.set_data(xdata, ydata)
        return line,

    def run(data):
        # update the data
        t, y = data
        xdata.append(t)
        ydata.append(y)
        xmin, xmax = ax.get_xlim()

        if t >= xmax:
            ax.set_xlim(xmin+dt, xmax+dt)
            ax.figure.canvas.draw()
        line.set_data(xdata, ydata)
        return line,

    fig, ax = plt.subplots()
    line, = ax.plot([], [], lw=2)
    ax.grid()
    xdata, ydata = [], []
    ani = animation.FuncAnimation(fig, run, data_gen, blit=False, interval=10, repeat=False, init_func=init)
    plt.show()


if args.filename:
    plot(args)
else:
    if args.dummy:
        import random
        def random_data():
            t = -dt
            while (True):
                t +=dt
                yield t, random.randrange(MAX_VAL)
        data = random_data
    else:
        def real_data():
            t = -dt
            while (True):
                t +=dt
                yield t, 500 # must communicate with minicom
        data = real_data

    display_scroll(data)


