Voice perceptron:

clear variables
close all
clc

recording2=load ('A2.mat');   x2 = recording2.x;
recording3=load ('A3.mat');   x3 = recording3.x;
recording4=load ('A4.mat');   x4 = recording4.x;
recording5=load ('A5.mat');   x5 = recording5.x;
recording6=load ('A6.mat');   x6 = recording6.x;
recording7=load ('A7.mat');   x7 = recording7.x;
recording8=load ('A8.mat');   x8 = recording8.x;
recording9=load ('A9.mat');   x9 = recording9.x;
recording10=load ('A10.mat');   x10 = recording10.x;

recording11=load ('I2.mat');   x11 = recording11.x;
recording12=load ('I3.mat');   x12 = recording12.x;
recording13=load ('I4.mat');   x13 = recording13.x;
recording14=load ('I5.mat');   x14 = recording14.x;
recording15=load ('I6.mat');   x15 = recording15.x;
recording16=load ('I7.mat');   x16 = recording16.x;
recording17=load ('I8.mat');   x17 = recording17.x;
recording18=load ('I9.mat');   x18 = recording18.x;
recording19=load ('I10.mat');   x19 = recording19.x;




row2=[1 x2'];
row3=[1 x3'];
row4=[1 x4'];
row5=[1 x5'];
row6=[1 x6'];
row7=[1 x7'];
row8=[1 x8'];
row9=[1 x9'];
row10=[1 x10'];
row11=[1 x11'];
row12=[1 x12'];
row13=[1 x13'];
row14=[1 x14'];
row15=[1 x15'];
row16=[1 x16'];
row17=[1 x17'];
row18=[1 x18'];
row19=[1 x19'];


A= [row2; row3; row4; row5; row6; row7; row8; row9; row10; ...
    row11; row12; row13; row14; row15; row16; row17; row18; row19];

y=[0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1]';


A = A(:,[1 20000:44101]);
n=size(A,2);
m=size(A,1);

w=(A'*A)\(A'*y);
w
plot(A')

%%

clc
close all

testrecording1=load ('testA1.mat');   testx1 = testrecording1.x;
testrecording2=load ('testA2.mat');   testx2 = testrecording2.x;
testrecording3=load ('testA3.mat');   testx3 = testrecording3.x;
testrecording4=load ('testA4.mat');   testx4 = testrecording4.x;
testrecording5=load ('testA5.mat');   testx5 = testrecording5.x;

testrecording6=load ('testI1.mat');   testx6 = testrecording6.x;
testrecording7=load ('testI2.mat');   testx7 = testrecording7.x;
testrecording8=load ('testI3.mat');   testx8 = testrecording8.x;
testrecording9=load ('testI4.mat');   testx9 = testrecording9.x;
testrecording10=load ('testI5.mat');   testx10 = testrecording10.x;

testA=[1 testx1'; 1 testx2';1 testx3';1 testx4'; 1 testx5'; 1 testx6';...
    1 testx7'; 1 testx8'; 1 testx9'; 1 testx10';];
testA = testA(:,[1 20000:44101]);

ytestpredicted = testA*w >= 0.5 ;
ytesttrue=[0 0 0 0 0 1 1 1 1 1]';
[ytesttrue ytestpredicted]

ypredicted = A*w >= 0.5 ;
[y ypredicted]

