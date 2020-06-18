clc
clear
nii=load_nii('/home/lld/Downloads/HCP/BEN_data/UBEN/REST1/s_rfMRI_REST1_100307_r0.016_dim3_nei_1.nii');
img=nii.img;
n=1;                 % matlab array induce must begin from 1 , express how much series it have.
%allseries=[];
for y = 0:108         % this is true coordinat range of x and y.
    for x = 0:90
        allseries(n,:) = getTimeseries(img,x,y,90);
        n=n+1;
    end
end 
n1 = 20 * 20;
n2 = 45 * 63;
n3 = 60 * 75;
n4 = 80 * 100;
subplot(4,1,1);
plot(allseries(n1,:));
title('x=20; y=20');
subplot(4,1,2);
plot(allseries(n2,:));
title('x=45; y=63');
subplot(4,1,3);
plot(allseries(n3,:));
title('x=60; y=75');
subplot(4,1,4);
plot(allseries(n4,:));
title('x=80; y=100');

