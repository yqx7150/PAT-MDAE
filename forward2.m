function sensordata1= forward2(pic)
% parallel.gpu.enableCUDAForwardCompatibility(true);
 pic = double(padarray(pic,[92 92]));
%  Script for calling the kWave operattor for learned 3D photoacoustic
%  imaging. This script initialises the model in k-wave and
%  evaluates the gradients.
% 
%  This is accompanying code for: Hauptmann et al., Model based learning for 
%  accelerated, limited-view 3D photoacoustic tomography, 
%  https://arxiv.org/abs/1708.09832
% 
%  written by Felix Lucka and Andreas Hauptmann, January 2018
%  ==============================================================================

    load('.\setting\limit_bandwidth66_64sensors_2.25Mhz.mat');
	
    % for an explanation of the options, see kWaveWrapper.m
    dataCast    =  'gpuArray-single';
    smoothP0    = true;
    codeVersion = 'Matlab'; 

    inputArgs   = {'PMLSize', 20, 'DataCast', dataCast, 'Smooth', smoothP0,...
        'kWaveCodeVersion', codeVersion, 'PlotSim', false, 'Output', false};
    
    % define function handles for forward and adjoint operator
    A    = @(p0) kWaveWrapper(p0, 'forward', kgrid, medium, sensor, inputArgs{:});
    sensordata1=A(pic);
    
end
