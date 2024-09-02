# The FFT Harward Implementation of MDC Pipeline Architecure

## Introduction

FFT stands for fast fouriter trasnform, the original formula of FFT is shown below as :

$$
X(k) = {\sum}_{n=0}^{N-1} x(n) W_N^{nk}
$$

There are many existed high-performance FFT hardware architectures,i.e. MDC,SDF,SFF. Therefor,this repo is a hardware prototype for realizing the radix-${2^5}$ MDC FFT architecture,aiming to support FFT lengths ranges from 32 points to 512K pointsd.

## The propsosed radix- $2^5$ Alogrithm

This architecture decompsed the traditional Discrete Fourier Transform by using the previous equation,where the n is the time index, k is the frequency index and $W_{N}$ is the twiddle factor.

$$
X(k) = {\sum}_{n=0}^{N-1} x(n) W_N^{nk}
$$

To induce the expression of radix-$2^5$ algorithm, a 6-dimension linear map is applied as follows:

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
Substituing this mapping method into the Equation (2):
$$
\begin{equation}
\begin{aligned}
X&(k_1 + 2k_2 + 4k_3 + 8k_4 + 16k_5 + 32k_6)\\
&= \sum_{n_6=0}^{\frac{N}{32}-1} \sum_{n_5=0}^{1} \sum_{n_4=0}^{1} \sum_{n_3=0}^{1} \sum_{n_2=0}^{1} \sum_{n_1=0}^{1} \\
&\times x\left( \frac{N}{2} n_1 + \frac{N}{4} n_2 + \frac{N}{8} n_3 + \frac{N}{16} n_4 + \frac{N}{32} n_5 + n_6 \right) W_N^{nk}
\end{aligned}
\end{equation}
$$
And the twiddle factor decomposition is expressed as:
$$
W_N^{nk} = W_N^{
\begin{aligned}
&\left(\scriptstyle
\frac{N}{2} n_1 + \frac{N}{4} n_2 + \frac{N}{8} n_3 + \frac{N}{16} n_4 + \frac{N}{32} n_5 + n_6 
\right) \\
&\left(\scriptstyle
k_1 + 2k_2 + 4k_3 + 8k_4 + 16k_5 + 32k_6
\right)
\end{aligned}
}
\label{eq:tfd}
$$
In order to calcualte the radix below the 5, we are intented to ahieve a hardware efficient design, by appling the same set of hardware for mixed-radix computation scenarios. Additinoally, we classified the rotation in two categories: constant and non-trivial. constant twiddle factor implies to store nearby the buffterfly units and non-trivial twiddle factor is stored at ROM in advanced at the end of each MDC line. The modified algorithm is expressed as:
$$
\begin{aligned}
&W_N^{nk} = W_N^{
\begin{aligned}
&\left(\scriptstyle
\frac{N}{2} n_1 + \frac{N}{4} n_2 + \frac{N}{8} n_3 + \frac{N}{16} n_4 + \frac{N}{32} n_5 + n_6 
\right) \\
&\left(\scriptstyle
k_1 + 2k_2 + 4k_3 + 8k_4 + 16k_5 + 32k_6
\right)
\end{aligned}
} \\
&= \underbrace{(-1)^{n_1k_1}}_{\text{Stage 1 BU}} \overbrace{W_{32}^{k_1(8n_2 + 4n_3 + 2n_4 + n_5)}}^{\text{Stage 1 TF}} \underbrace{(-1)^{n_2k_2}}_{\text{Stage 2 BU}} \overbrace{W_{16}^{k_2(4n_3 + 2n_4+ n_5)}}^{\text{Stage 2 TF}} \\
&\times \underbrace{(-1)^{n_3k_3}}_{\text{Stage 3 BU}} \overbrace{W_{8}^{k_3(2n_4 +n_5)}}^{\text{Stage 3 TF}} \underbrace{(-1)^{n_4k_4}}_{\text{Stage 4 BU}} \overbrace{W_{4}^{k_3n_4}}^{\text{tage 4 TF}} \\
&\times \underbrace{(-1)^{n_5k_5}}_{\text{Stage 5 BU}} \overbrace{W_N^{(k_1 + 2k_2 + 4k_3 + 8k_4 + 16k_5)}}^{\text{Stage 5 TF}} W_{\frac{N}{32}}^{n_6k_6}
\end{aligned}
$$
In the scenarios, the constant twiddle factor is composed by different base with 32,16,8,4. For clarity, the below signal flow graph vividly depicts the decomposion mentional above. The symmetric distribution of every stage constant twiddle factor is shown below.

<img src="https://anniezfy.oss-cn-hangzhou.aliyuncs.com/202409021612492.png" alt="论文配图" style="zoom:10%;" />

## The MDC structure 

The graph below depict the  haredware structure of a MDC , suqare-shape and circle-shape represents the component of twiddle factor. The MDC structure consists of radix-2 butterflies, constant multipliers, non-trivial mulitipliers and shuffling structure.

![mdc_structure](https://anniezfy.oss-cn-hangzhou.aliyuncs.com/202409021639258.png)

##  Top-level Design

For calculating 512K point, we need to concatenate fifteen stages of radix-2 butterflies and set each shuffle unit depth. An omitted component pipelined MDC structure is shown as below: 

![MDC_pipeline](https://anniezfy.oss-cn-hangzhou.aliyuncs.com/202409021755775.png)

every five butterfly radix-2 unit can be wrapped as one set, every set attches a non-trivial twiddle factor.For better visualization， we cut one pipeline architecture into four sets and place them neighboring horizontally. We cen infer that the different depth of FIFO indicate the number of shuffle data among the architecture. Additionally, the drawback of this architecture is low hardware utilization and redunant hardware resources.

## Source Code 



