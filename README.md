# PAT-MDAE
Paper: Accelerated model-based iterative reconstruction strategy for sparse-view photoacoustic tomography aided by multi-channel autoencoder priors
Authors: Xianlin Song, Wenhua Zhong, Zilong Li, Shuchong Peng, Hongyu Zhang, Guijun Wang, Jiaqing Dong, Xuan Liu, Xiaoling Xu, Qiegen Liu       
IEEE Transactions on Medical Imaging, https://ieeexplore.ieee.org/abstract/document/9435335       

Date : Dec-2-2023     
Version : 1.0       
The code and the algorithm are for non-comercial use only.      
Copyright 2020, Department of Electronic Information Engineering, Nanchang University.     
      
Photoacoustic tomography (PAT) commonly works in sparse view due to data acquisition limitations. However, reconstruction suffers from serious deterioration (e.g., severe artifacts) using traditional algorithms under sparse view. Here, a novel accelerated model-based 
iterative reconstruction strategy for sparse-view PAT aided by multi-channel autoencoder priors was proposed. A multi-channel denoising autoencoder network was designed to learn prior information, which provides constraints for model-based iterative reconstruction. This 
integration accelerates the iteration process, leading to optimal reconstruction outcomes. The performance of the proposed method was evaluated using blood vessels simulation data and experimental data. The results show that the proposed method can achieve superior sparse-view reconstruction with a significant acceleration of iteration. Notably, the proposed method exhibits excellent performance under extremely sparse condition (e.g., 32 projections) compared with the U-Net method, with an improvement of 48% in PSNR and 12% in SSIM 
for in vivo experimental data.   

## Results on simulation data.
<div align="center"><img src="https://github.com/yqx7150/HGGDP/blob/master/hggdp_rec/sample/fig11.png"> </div>

Fig. 1. Sparse reconstruction flowchart of PAT based on MAEP method.       
    
## Results on simulation data.
<div align="center"><img src="https://github.com/yqx7150/HGGDP/blob/master/hggdp_rec/sample/fig11.png"> </div>

Fig. 6. The reconstruction results of different methods for simulated blood vessels under different projections.    
    
## Results on phantom experiment data.
<div align="center"><img src="https://github.com/yqx7150/HGGDP/blob/master/hggdp_rec/sample/fig11.png"> </div>

Fig. 7. Reconstruction results of different methods on circular phantomdata under different projections.

## Results on in vivo experiment data.
<div align="center"><img src="https://github.com/yqx7150/HGGDP/blob/master/hggdp_rec/sample/compare_DDP.PNG"> </div>

Fig. 8. Reconstruction results of differentmethods on in vivomouse data under different projections.

## Other Related Projects
  * Multi-Channel and Multi-Model-Based Autoencoding Prior for Grayscale Image Restoration  
[<font size=5>**[Paper]**</font>](https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=8782831)  [<font size=5>**[Code]**</font>](https://github.com/yqx7150/MEDAEP)   [<font size=5>**[Slide]**</font>](https://github.com/yqx7150/EDAEPRec/tree/master/Slide)  [<font size=5>**[数学图像联盟会议交流PPT]**</font>](https://github.com/yqx7150/EDAEPRec/tree/master/Slide)

  * Highly Undersampled Magnetic Resonance Imaging Reconstruction using Autoencoding Priors  
[<font size=5>**[Paper]**</font>](https://cardiacmr.hms.harvard.edu/files/cardiacmr/files/liu2019.pdf)  [<font size=5>**[Code]**</font>](https://github.com/yqx7150/EDAEPRec)   [<font size=5>**[Slide]**</font>](https://github.com/yqx7150/EDAEPRec/tree/master/Slide) [<font size=5>**[数学图像联盟会议交流PPT]**</font>](https://github.com/yqx7150/EDAEPRec/tree/master/Slide)

  * High-dimensional Embedding Network Derived Prior for Compressive Sensing MRI Reconstruction  
 [<font size=5>**[Paper]**</font>](https://www.sciencedirect.com/science/article/abs/pii/S1361841520300815?via%3Dihub)   [<font size=5>**[Code]**</font>](https://github.com/yqx7150/EDMSPRec)
 
  * Denoising Auto-encoding Priors in Undecimated Wavelet Domain for MR Image Reconstruction  
[<font size=5>**[Paper]**</font>](https://www.sciencedirect.com/science/article/pii/S0925231221000990) [<font size=5>**[Paper]**</font>](https://arxiv.org/ftp/arxiv/papers/1909/1909.01108.pdf)  [<font size=5>**[Code]**</font>](https://github.com/yqx7150/WDAEPRec)


