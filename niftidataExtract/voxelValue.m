% show a voxel index in timeSeries
function [value]= voxelValue(x,y,z)

    voxelx=x+1;
    voxely=y+1;
    voxelz=z+1;
    index=91*109*(voxelz-1)+91*(voxely-1)+voxelx;
    value=index;
end

% example:
% timeSeries(voxelValue(61,71,63),2)