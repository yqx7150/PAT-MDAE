%input_path /output_path /SystemMatrix
% for j=1:20
mat_path='.\Test_Images\gsxueguansimulation_1000sensor.mat';
load(mat_path);
save_path='.\result\有限带宽\2.25MHz平面\血管\64_迭代2000次';
% save_path=['.\result\有限带宽\2.25MHz平面\批量实验\血管\128\',num2str(j),'\'];
mkdir(fullfile(save_path,'迭代结果'));

%match prior
[rows, cols] = size(original_image);
imwrite(original_image,fullfile(save_path,'original_image.png'));

% get measurement;
proj = forward2(original_image);
save(fullfile(save_path,'proj.mat'),'proj');

%get sparse sampling image
sparse_image=backward2(proj);
sparse_image_max=max(sparse_image(:));
sparse_image_min=min(sparse_image(:));
sparse_image_normal=double((sparse_image-sparse_image_min)/(sparse_image_max-sparse_image_min));
imwrite(sparse_image_normal,fullfile(save_path,'有限带宽稀疏角.png'));
fid0 = fopen(fullfile(save_path,'measure.txt'),'a');
fprintf(fid0,'%.4f\r\n',psnr(original_image,sparse_image_normal));
fprintf(fid0,'%.4f\r\n',ssim(original_image,sparse_image_normal));
fclose(fid0);




% params of pwls
beta = 0.005;
pwls_iter = 4;%默认20
iter = 2000;
pwls = zeros(size(original_image));
reconstruction = zeros(size(original_image));
pre_pwls = zeros(size(original_image));
use_gpu = 1;   % set to 0 if you want to run on CPU (very slow)
net = loadNet_qx3channel_diffSigma_REDNet1copy3YYY([rows,cols,3], use_gpu);
sigma_net = 15;
gradient_beta = 1;
Thresh_value = 1;
maxvalue_exchange = 255/max(original_image(:));
wei_q = 1.5;
Wei_prior_err1 = ones([size(original_image),3]);

%迭代过程
for i =1:iter 
    % pwls reconstruction
    if i < 40%稀疏64 采用30，可能有限带宽稀疏64得采用40  加这句在SSIM提升很慢阶段（或在峰值阶段）有提升，不加也可
    pwls = split_hscg1(reconstruction, proj, reconstruction, beta, pwls_iter); 
    else
    pwls = split_hscg1(pwls, proj, reconstruction,beta, pwls_iter);
    end
    pwls(pwls < 0) = 0;

    %% descent gradient of REDAEP
    input = repmat(pwls * maxvalue_exchange,[1,1,3]);
    noise = randn(size(input)) * sigma_net;
    rec = net.forward({input+noise});
    prior_err0 = input - rec{1};
    
    if i >= 40
        Wei_prior_err1 = Thresh_value./(Thresh_value+abs(prior_err0).^(2-wei_q));
    end
    
    rec = net.backward({-prior_err0});
    prior_err = prior_err0 + rec{1};
    prior_err = prior_err / maxvalue_exchange;
    
    reconstruction = double(pwls - gradient_beta * mean(Wei_prior_err1.*prior_err,3)); 
    reconstruction(reconstruction < 0) = 0;
    
    %save results
    png_save=['迭代结果\',num2str(i),'.png'];
    imwrite(reconstruction,fullfile(save_path,png_save));
    fid = fopen(fullfile(save_path,'psnr.txt'),'a');
    fprintf(fid,'%.4f\r\n',psnr(original_image,reconstruction));
    fclose(fid);
    fid1 = fopen(fullfile(save_path,'ssim.txt'),'a');
    fprintf(fid1,'%.4f\r\n',ssim(original_image,reconstruction));
    fclose(fid1);
    
    % stop criteria
    diff = (pre_pwls-pwls).^2;
    if sqrt(sum(diff(:))) < 5e-4
        break;
    end
    pre_pwls = pwls;
end
% end