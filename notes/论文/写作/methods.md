Another approach is developed in [40], where a 3-D convolution is literally deployed ==by the first layer followed by two 1-D Convs and ending with two FC layers==
>V. Slavkovikj, S. Verstockt, W. De Neve, S. Van Hoecke, and R. Van de Walle, “Hyperspectral image classification with convolutional neural networks,” in Proc. 23rd ACM Int. Conf. Multimedia, Oct. 2015, pp. 1159–1162.

Because the raw input data contain rich and redundant spectral information, ==1 × 1 × 7== vector kernels are used in these blocks. This layer reduces the high dimensionality of input cubes and extracts low-level spectral features of HSI.
![alt text](image/image2.png)
>2017-Spectral–Spatial Residual Network for Hyperspectral Image Classification: A 3-D Deep Learning Framework
