%m=2  %no of examples
%n=3 %no of attributes
clear all;

sigma=1;   %discuss

%X=[
%    0.1,0.2,0.6;
%    0.9,0.5,0.4;
%    ];
input_file=csvread('diabetes_2.csv');
output_file=csvread('diabetes_2.csv');
%input_file=csvread('iris.csv');
%output_file=csvread('iris.csv');


 X_full=input_file(1:768,1:8);
 
 
 
 %X_normalized=[normalize(X_full(:,1)),normalize(X_full(:,2)),normalize(X_full(:,3)),normalize(X_full(:,4))];
X_normalized=X_full;
 %train data
X=X_normalized(1:425,1:8);
 %test data
 X_test=X_normalized(426:768,1:8);
 
Y_full=output_file(1:768,9);

%Y train output
Y=Y_full(1:425);
%test output data actual values
Y_test=Y_full(426:768);

[m,n]=size(X);


%X_normalized=normalize(X(:,1))

RBF=RBF_matrix(X,m,sigma);

%radial_basis(X_normalized(1,:),X_normalized(2,:),sigma);

v=RBF\Y;


%test_data result
[test_data_rows,test_data_columns]=size(X_test);
for i=1:test_data_rows
   test_data_output(i)=test_pattern(X,X_test(i,1:8),v,m,sigma);

    %test_pattern(X,normalize(X_test(1,1:8)),v,m,sigma);
end
y_computed=test_data_output';
accuracy=y_computed-Y_test;
fprintf('Accuracy is %i \n',(sum(accuracy(:)==0)/test_data_rows)*100)

       