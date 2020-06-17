function [tmap] = voxelttest(voxel)
%voxelttest is the function to calculate each voxel t value for fmri by
%this function:
%         t=(voxel(i))/(SD/sqrt(n))
%         n=the number of voxel
%   Detailed explanation goes here

      n=length(voxel);
      SD=std(voxel);
      for i=1:n
         tmp(i)=voxel(i)/SD; 
      end
      tmap=tmp';
end

