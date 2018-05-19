function [ RBF ] = RBF_matrix( X,m,sigma)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

%create a m*m identity matrix
RBF=eye(m);

for i=1:m
    for j=1:m
        RBF(i,j)=radial_basis(X(i,:),X(j,:),sigma);
    end   
end
    
end

