clc
clear
cifti=ciftiopen('cope1.dtseries.nii','wb_command');
origin_data=cifti.cdata;
tmap_data=voxelttest(origin_data);
cifti.cdata=tmap_data;
ciftisave(cifti,'tmap1.dtseries.nii','wb_command');
% generate p active map

tmp=cifti.cdata;
active_tmp=active_p(tmp,'equal');
cifti.cdata=active_tmp;
ciftisave(cifti,'pmap1_eq.dtseries.nii','wb_command');

active_tmp=active_p(tmp,'great');
cifti.cdata=active_tmp;
ciftisave(cifti,'pmap1_gt.dtseries.nii','wb_command');

active_tmp=active_p(tmp,'less');
cifti.cdata=active_tmp;
ciftisave(cifti,'pmap1_lt.dtseries.nii','wb_command');