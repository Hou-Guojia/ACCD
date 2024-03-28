function [magnitudeImage,orientationImage] = gradient(I)
%image gradient
fy=[-1,-1,-1;-1,8,-1;-1,-1,-1];
fx=8;
[h,w,~]=size(I);
Gy= imfilter(I,fy,'replicate');
Gx=ones(h,w)*fx;
magnitudeImage=sqrt(Gy.^2+Gx.^2);
orientationImage=atan(Gy./Gx);
end










