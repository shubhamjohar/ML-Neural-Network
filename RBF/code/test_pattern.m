function [ test_result ] = test_pattern(X,P,v,m,sigma )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
temp=ones(1,m);
for i=1:m
    temp(i)=radial_basis(X(i,:),P,sigma);
end

test_result=temp*v;
test_result=round(test_result);

end

