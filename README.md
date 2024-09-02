# The FFT Harward Implementation of MDC Pipeline Architecure

## Introduction

FFT stands for fast fouriter trasnform, the original formula of FFT is shown below as :

$$
X(k) = {\sum}_{n=0}^{N-1} x(n) W_N^{nk}
$$

There are many existed high-performance FFT hardware architectures,i.e. MDC,SDF,SFF. Therefor,this repo is a hardware prototype for realizing the radix-${2^5}$ MDC FFT architecture,aiming to support FFT lengths ranges from 32 points to 512K pointsd.

## Decomposed Alogrithm

This architecture decompsed the traditional Discrete Fourier Transform by using the previous equation,where the n is the time index, k is the frequency index and $W_{N}$ is the twiddle factor.

$$
X(k) = {\sum}_{n=0}^{N-1} x(n) W_N^{nk}
$$

To induce the expression of radix-$2^5$ algorithm, a 6-dimension linear map is applied as follows:

![](https://anniezfy.oss-cn-hangzhou.aliyuncs.com/202409021448705.png)

$$
\begin{cases}
n = \frac{N}{2} n_1 + \frac{N}{4} n_2 + \frac{N}{8} n_3 + \frac{N}{16} n_4 + \frac{N}{32} n_5 + n_6 \\
n_1, n_2, n_3, n_4, n_5 = 0, 1 \\
n_6 = 0, 1, \ldots, \frac{N}{32} - 1 \\
k = k_1 + 2k_2 + 4k_3 + 8k_4 + 16k_5 + 32k_6\\
k_1, k_2, k_3, k_4, k_5 = 0, 1 \\
k_6 = 0, 1, \ldots, \frac{N}{32} - 1
\end{cases}
$$
