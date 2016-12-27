import cmath
import numpy as np
import pydub
import matplotlib.pyplot as plt

sound = pydub.AudioSegment.from_file("Balsas002.m4a", "m4a")
t = sound.get_array_of_samples()

Fs = 100                         
Ts = 1.0/Fs                      
tt = np.arange(0,1,Ts)            
ff = 5                           

y = t[2000:2100]

plt.subplot(2,1,1)
plt.plot(y,'k-')
plt.xlabel('Laikas')
plt.ylabel('Amplitude')

plt.subplot(2,1,2)
n = len(y)                       
k = np.arange(n)
T = n/Fs
frq = k/T 

freq = frq[:50]           

Y = np.fft.fft(y)/n

Y = Y[:50]

plt.plot(freq, abs(Y), 'r-')
plt.xlabel('Dažnis (Hz)')
plt.ylabel('|Y(freq)|')
plt.show()

