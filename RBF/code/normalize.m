function [ c ] = normalize( b )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
a=b';
standard_deviation=std(a);
average=mean(a);
[m,n]=size(a);

for i=1:n
    %a(i)=(a(i)-average)/standard_deviation;
    a(i)=(a(i)-min(a))/(max(a)-min(a));
end

c=a';

end

