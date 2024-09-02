# The FFT Harward Implementation of MDC Pipeline Architecure

## Introduction

FFT stands for fast fouriter trasnformation, the original formula of FFT is shown below as :

$$
X(k) = {\sum}_{n=0}^{N-1} x(n) W_N^{nk}
$$

There are many existed high-performance FFT hardware architectures,i.e. MDC,SDF,SFF. Therefor,this repo is a hardware prototype for realizing the radix-${2^5}$ MDC FFT architecture,
aiming to support FFT lengths ranges from 32 points to 512K pointsd.
