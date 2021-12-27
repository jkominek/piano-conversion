import numpy as np
import matplotlib.pyplot as plt

#plt.style.use('fivethirtyeight')
#plt.xkcd() 

s1 = np.loadtxt("test.txt", usecols=0).flatten()
s2 = np.loadtxt("test.txt", usecols=1).flatten()
s3 = np.loadtxt("test.txt", usecols=2).flatten()

dt = 0.05 
t = dt * np.arange(len(s1))

fig, axs = plt.subplots(2, 1)
axs[0].plot(t, s1, t, s2, t, s3)
axs[0].set_xlim(0, t[-1])
axs[0].set_xlabel('time')
axs[0].set_ylim(bottom=0)
axs[0].set_ylabel('signals')
axs[0].grid(True)

cxy, f = axs[1].cohere(s1, s2, 256, 1. / dt)
axs[1].set_ylabel('coherence')

fig.tight_layout()
plt.savefig("a.png", dpi=300)
