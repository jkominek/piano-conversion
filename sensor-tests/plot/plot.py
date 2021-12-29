#!/usr/bin/env python3

import numpy as np
import matplotlib.pyplot as plt
import argparse

#plt.style.use('fivethirtyeight')
#plt.xkcd() 

parser = argparse.ArgumentParser()
parser.add_argument("--filename")
parser.add_argument("--dummy", action='store_true')
args = parser.parse_args()

def plot(args):    
    s1 = np.loadtxt(args.filename, usecols=0).flatten()
    s2 = np.loadtxt(args.filename, usecols=1).flatten()
    s3 = np.loadtxt(args.filename, usecols=2).flatten()

    dt = 0.05 
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


if args.filename:
    plot(args)
else:
    print("TBD")


