function [tseries] = getTimeseries(img,x,y,z)  
% getTimeseries Summary of this function:
%   get a nii file (x,y) timeseries in z range
%   x,y,z is coordinate in fsl which begin with 0
%   array index in matlab must begin with 1
  arrayx = x+1;
  arrayy = y+1;
  arrayz = z+1;

  for n = 1 : arrayz
    tmp(n)= img(arrayx,arrayy,n); 
  end
  tseries=tmp;
  
end

