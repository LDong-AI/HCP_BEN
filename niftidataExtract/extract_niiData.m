function [TimeSeries]= extract_niiData (filename,xlength,ylength,zlength,voxelnumber)
% function extract_niiData use to extract a nii image data into a
% [voxelnumber,1] array.(TimerSeries)
% xlength: length of x axial in a image. ylength: length of y axial in an image. 
% zlength: length of z axial in a image. 
% voxelnumber: equal to x*y*z, that means total voxel number in an image

nii=load_nii(filename);
imgData = nii.img;
TimeSeries= ones(voxelnumber,1);
row_n=1;
for cz = 1:zlength
    for cy = 1:ylength
        for cx = 1:xlength
            TimeSeries(row_n)=imgData(cx,cy,cz);
            row_n=row_n+1;
        end
    end
end  
end