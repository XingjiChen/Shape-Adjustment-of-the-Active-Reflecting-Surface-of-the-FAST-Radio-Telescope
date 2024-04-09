[~,~,X1]=xlsread('附件1.csv');

[~,~,X2]=xlsread('附件3.csv');

X1=string(X1);X2=string(X2);

X1(1,:)=[];X2(1,:)=[];

figure

hold on

a=[];b=[];c=[];

for i=1:size(X2,1)

a=find(X1(:,1)==X2(i,1));

b=find(X1(:,1)==X2(i,2));

c=find(X1(:,1)==X2(i,3));

plot3(double(X1([a,b,c],2)),double(X1([a,b,c],3)),double(X1([a,b,c],4)),'b-*')

end
