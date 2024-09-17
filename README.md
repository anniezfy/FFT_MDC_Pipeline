# The FFT Harward Implementation of MDC Pipeline Architecure

## Introduction

FFT stands for fast fouriter trasnform, the original formula of FFT is shown below as :

$$
X(k) = {\sum}_{n=0}^{N-1} x(n) W_N^{nk}
$$

There are many existed high-performance FFT hardware architectures i.e. MDC,SDF,SFF. Therefor,this repo is a hardware prototype for realizing the radix-$2^5$ MDC FFT architecture,aiming to support FFT lengths ranges from 32 points to 512K pointsd.

## The propsosed radix- $2^5$ Alogrithm

This architecture decompsed the traditional Discrete Fourier Transform by using the previous equation,where the n is the time index, k is the frequency index and $W_{N}$ is the twiddle factor.

$$
X(k) = {\sum}_{n=0}^{N-1} x(n) W_N^{nk}
$$

To induce the expression of radix-$2^5$ algorithm, a 6-dimension linear map is applied as follows:

<img src="https://anniezfy.oss-cn-hangzhou.aliyuncs.com/202409022009811.png" alt="截屏2024-09-02 20.09.11" style="zoom:50%;" />

Substituing this mapping method into the Equation (2):<img src="https://anniezfy.oss-cn-hangzhou.aliyuncs.com/202409022015183.png" alt="截屏2024-09-02 20.15.31" style="zoom:50%;" />

And the twiddle factor decomposition is expressed as:

<img src="https://anniezfy.oss-cn-hangzhou.aliyuncs.com/202409022020346.png" alt="截屏2024-09-02 20.16.43" style="zoom:50%;" />

In order to calcualte the radix below the 5, we are intented to ahieve a hardware efficient design, by appling the same set of hardware for mixed-radix computation scenarios. Additinoally, we classified the rotation in two categories: constant and non-trivial. constant twiddle factor implies to store nearby the buffterfly units and non-trivial twiddle factor is stored at ROM in advanced at the end of each MDC line. The modified algorithm is expressed as:

![截屏2024-09-02 20.18.15](https://anniezfy.oss-cn-hangzhou.aliyuncs.com/202409022018943.png)

In the scenarios, the constant twiddle factor is composed by different base with 32,16,8,4. For clarity, the below signal flow graph vividly depicts the decomposion mentional above. The symmetric distribution of every stage constant twiddle factor is shown below.

<img src="https://anniezfy.oss-cn-hangzhou.aliyuncs.com/202409021612492.png" alt="论文配图" style="zoom:5%;" />

## The MDC structure

The graph below depict the  haredware structure of a MDC , suqare-shape and circle-shape represents the component of twiddle factor. The MDC structure consists of radix-2 butterflies, constant multipliers, non-trivial mulitipliers and shuffling structure.

![mdc_structure](https://anniezfy.oss-cn-hangzhou.aliyuncs.com/202409021639258.png)

## Top-level Design

For calculating 512K point, we need to concatenate fifteen stages of radix-2 butterflies and set each shuffle unit depth. An omitted component pipelined MDC structure is shown as below:

![MDC_pipeline](https://anniezfy.oss-cn-hangzhou.aliyuncs.com/202409021755775.png)

every five butterfly radix-2 unit can be wrapped as one set, every set attches a non-trivial twiddle factor.For better visualization， we cut one pipeline architecture into four sets and place them neighboring horizontally. We cen infer that the different depth of FIFO indicate the number of shuffle data among the architecture. Additionally, the drawback of this architecture is low hardware utilization and redunant hardware resources.

## Source Code

1. The project is built on the Chisel Project framework. The detailed configuration can be found in the build.sbt file.
2. The hardware description language (HDL) files for each MDC Pipeline architecture module are located in the FFT_MDC_Pipeline/tree/master/src/main directory.
3. The memory folder contains the initial input data and the twiddle factors for each MDC unit. The twiddle factors are precomputed and stored in advance, with their positions coordinated by preprocessing in a software program.
