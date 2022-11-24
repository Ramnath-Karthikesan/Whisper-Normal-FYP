clc, close all
sdirectory = 'clean';     %Change folder names based on speaker
outdirectory = 'noise\5dB'; %Change folder names based on speaker
wavfiles = dir([sdirectory '\*.wav']);
for k = 1:length(wavfiles)
    cleanfile = [sdirectory '\' wavfiles(k).name];
    [filepath,name,ext] = fileparts(cleanfile);
    disp(cleanfile);
    
    noisefile = 'whitenoisegaussian.wav';
%     noisefile = 'cafeteria_babble2.wav';
        
    outfile = [outdirectory '\' wavfiles(k).name];
    addnoise_asl_mod(cleanfile,noisefile,outfile,5) %change SNR
end