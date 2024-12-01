# PAT-MDAE
Paper: Accelerated model-based iterative reconstruction strategy for sparse-view photoacoustic tomography aided by multi-channel autoencoder priors      
Authors: Xianlin Song, Wenhua Zhong, Zilong Li, Shuchong Peng, Hongyu Zhang, Guijun Wang, Jiaqing Dong, Xuan Liu, Xiaoling Xu, Qiegen Liu       
Journal of Biophotonics, https://onlinelibrary.wiley.com/doi/10.1002/jbio.202300281        

Date : Dec-2-2023     
Version : 1.0       
The code and the algorithm are for non-comercial use only.      
Copyright 2020, Department of Electronic Information Engineering, Nanchang University.     
      
Photoacoustic tomography (PAT) commonly works in sparse view due to data acquisition limitations. However, reconstruction suffers from serious deterioration (e.g., severe artifacts) using traditional algorithms under sparse view. Here, a novel accelerated model-based 
iterative reconstruction strategy for sparse-view PAT aided by multi-channel autoencoder priors was proposed. A multi-channel denoising autoencoder network was designed to learn prior information, which provides constraints for model-based iterative reconstruction. This 
integration accelerates the iteration process, leading to optimal reconstruction outcomes. The performance of the proposed method was evaluated using blood vessels simulation data and experimental data. The results show that the proposed method can achieve superior sparse-view reconstruction with a significant acceleration of iteration. Notably, the proposed method exhibits excellent performance under extremely sparse condition (e.g., 32 projections) compared with the U-Net method, with an improvement of 48% in PSNR and 12% in SSIM 
for in vivo experimental data.   

## Method.
<div align="center"><img src="https://github.com/yqx7150/PAT-MDAE/blob/main/Figs/Fig1.jpg"> </div>

Fig. 1. Sparse reconstruction flowchart of PAT based on MAEP method.       
    
## Results on simulation data.
<div align="center"><img src="https://github.com/yqx7150/PAT-MDAE/blob/main/Figs/Fig6.jpg"> </div>

Fig. 6. The reconstruction results of different methods for simulated blood vessels under different projections.    
    
## Results on phantom experiment data.
<div align="center"><img src="https://github.com/yqx7150/PAT-MDAE/blob/main/Figs/Fig7.jpg"> </div>

Fig. 7. Reconstruction results of different methods on circular phantomdata under different projections.

## Results on in vivo experiment data.
<div align="center"><img src="https://github.com/yqx7150/PAT-MDAE/blob/main/Figs/Fig8.jpg"> </div>

Fig. 8. Reconstruction results of differentmethods on in vivomouse data under different projections.

## Other Related Projects
* Score-based generative model-assisted information compensation for high-quality limited-view reconstruction in photoacoustic tomography      
[<font size=5>**[Paper]**</font>](https://www.sciencedirect.com/science/article/pii/S2213597924000405)       [<font size=5>**[Code]**</font>](https://github.com/yqx7150/Limited-view-PAT-Diffusion)

* Sparse-view reconstruction for photoacoustic tomography combining diffusion model with model-based iteration      
[<font size=5>**[Paper]**</font>](https://www.sciencedirect.com/science/article/pii/S2213597923001118)       [<font size=5>**[Code]**</font>](https://github.com/yqx7150/PAT-Diffusion)

* Ultra-sparse reconstruction for photoacoustic tomography: sinogram domain prior-guided method exploiting enhanced score-based diffusion model      
[<font size=5>**[Paper]**</font>](https://www.sciencedirect.com/science/article/pii/S2213597924000879)       [<font size=5>**[Code]**</font>](https://github.com/yqx7150/PAT-Sinogram-Diffusion)

* Unsupervised disentanglement strategy for mitigating artifact in photoacoustic tomography under extremely sparse view      
[<font size=5>**[Paper]**</font>](https://www.sciencedirect.com/science/article/pii/S2213597924000302?via%3Dihub)       [<font size=5>**[Code]**</font>](https://github.com/yqx7150/PAT-ADN)
      
  * Multi-Channel and Multi-Model-Based Autoencoding Prior for Grayscale Image Restoration  
[<font size=5>**[Paper]**</font>](https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=8782831)  [<font size=5>**[Code]**</font>](https://github.com/yqx7150/MEDAEP)   [<font size=5>**[Slide]**</font>](https://github.com/yqx7150/EDAEPRec/tree/master/Slide)  [<font size=5>**[数学图像联盟会议交流PPT]**</font>](https://github.com/yqx7150/EDAEPRec/tree/master/Slide)

  * Highly Undersampled Magnetic Resonance Imaging Reconstruction using Autoencoding Priors  
[<font size=5>**[Paper]**</font>](https://cardiacmr.hms.harvard.edu/files/cardiacmr/files/liu2019.pdf)  [<font size=5>**[Code]**</font>](https://github.com/yqx7150/EDAEPRec)   [<font size=5>**[Slide]**</font>](https://github.com/yqx7150/EDAEPRec/tree/master/Slide) [<font size=5>**[数学图像联盟会议交流PPT]**</font>](https://github.com/yqx7150/EDAEPRec/tree/master/Slide)
      
* Generative model for sparse photoacoustic tomography artifact removal      
[<font size=5>**[Paper]**</font>](https://www.spiedigitallibrary.org/conference-proceedings-of-spie/12745/1274503/Generative-model-for-sparse-photoacoustic-tomography-artifact-removal/10.1117/12.2683128.short?SSO=1)               
     
* PAT-public-data from NCU [<font size=5>**[Code]**</font>](https://github.com/yqx7150/PAT-public-data)
