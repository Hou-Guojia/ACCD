function res = get_result(img,B,transmission)
%GET_RESULT restore
%   restoration
res = img;

res(:,:,1) = ((img(:,:,1) - B(1))./transmission + B(1));
res(:,:,2) = ((img(:,:,2) - B(2))./transmission + B(2));
res(:,:,3) = ((img(:,:,3) - B(3))./transmission + B(3));

end

