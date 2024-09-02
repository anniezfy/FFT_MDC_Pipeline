# The FFT Harward Implementation of MDC Pipeline Architecure

## Introduction

FFT stands for fast fouriter trasnformation, the original formula of FFT is shown below as :
$X(k) = {\sum}_{n=0}^{N-1} x(n) W_N^{nk}$

There are many existed high-performance FFT hardware architectures,i.e. MDC,SDF,SFF. Therefor,this repo is a hardware prototype for realizing the radix-$2^5$ MDC FFT architecture, aiming to support FFT lengths ranges from 32 points to 512K pointsd.

When $a \ne 0$, there are two solutions to $(ax^2 + bx + c = 0)$ and they are
$$x = {-b \pm \sqrt{b^2-4ac} \over 2a}$$

The Cauchy-Schwarz Inequality

$$\left( \sum_{k=1}^n a_k b_k \right)^2 \leq \left( \sum_{k=1}^n a_k^2 \right) \left( \sum_{k=1}^n b_k^2 \right)$$