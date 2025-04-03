---
title: Pre-Lab, Nuclear Magnetic Resonance (NMR)
author: Ali Ahmed
date: 2/25/2025
---

# Question 1

As the name suggests, in continuous NMR, continuous radio frequency (RF) signals are applied to "beat" against the resonance of a nuclear magnetic moment. On the other hand, in the case of pulsed NMR, pulses of RF radiation are used to look for "spin echos."

# Question 2

After a magnetic field has been applied and spins have been aligned, one may turn off the field. The amount of time it takes for the spins to de-align and return to the lower-energy, non- phase coherent state is known as the relaxation time. In the case of pulsed NMR, one can obtain the relaxation time by using a series of $\pi$ and $\frac{\pi}{2}$ pulses to obtain $T_1$ and $T_2$. 

# Question 3

We shoud expect the proton nuclei in different compounds to behave differently because different compounds have different numbers of electrons, which have a shielding effect on the nucleus; thus, a stronger magnetic field is required to produce the same result. 

# Question 4

We know that the gyromagnetic ration of hydrogen, according to Wikipedia, is 42.57 MHz/T. We can deduce the field in which it is in would be (60/42.57) = 1.40T. Now, with the gyromagnetic rati of flourine (40.078MHz/T), we can deduce that the frequency would be $40.078 \times 1.40 = \boxed{56.1 \text{MHz/T}}$.

# Question 5

We can get a rough estimate on the gyromagnetic ratio by dividing the resonsant frequency by the field strength, yielding $10.13/2.349 = 4.312$ MHz/T. Then, multiplying by the new field strength, we have a frequency of $\boxed{50.65} \text{MHz}$. 

# Question 6

If the gyromagnetic ration is 6.5 times smaller, we should expect the frequency to be 6.5 times smaller as well assuming the same field strength, yielding a field strength of $\boxed{61.53 \text{MHz}}$.


# Question 7

## Part A

The beats will not be at a minimum, causing the FID to appear distorted. Adjust the `TUNING` to maximize the FID signal. 

## Part B

The oscilloscope frequency will not be synchronized, and all you will see is noise. 

## Part C

The width of the pulses will be spaced too closely or too far apart, and you will not be able to accurately measure any sort of resonance. 

## Part D

The echo will be largely absent, as if the time is too long then the echo will have decayed before measurement. 

## Part E

If the repetition time is too short, then the atoms will not have had time to return to their relaxed state, yielding not a strong signal.


# Question 8

By reducing spin echo, we get an accurate measurement of $T_2$, not $T_2^*$. This reduction is done by applying an additional $\pi$ field, causing the time measurement to more closely follow $T_2$ and not be affected by the inhomogeneities of the original setup; using multiple $\pi$ pulses further reduced this effect. 

# Question 9

The FID signal is stronger for a $\frac{\pi}{2}$ pulse in comparison to a $\frac{3\pi}{2}$ pulse because each subsequent addition in $\pi$ requires a lot more accumulation of "error." Although theoretically there shouldn't be any difference, additional pulses of increasing angle will cause more instabilities, more opportunities for imohomogeneities to become present, and for more opportunities for miscalibration. Therefore, the effect won't be as strong. 