function [result] = radial_basis(A,B,sigma)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
temp=A-B;
result=exp(-(temp*temp')/(2*sigma));
end

