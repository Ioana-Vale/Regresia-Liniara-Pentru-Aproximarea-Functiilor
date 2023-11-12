load('lab2_05 (3).mat');

%id.X;
%id.Y;
%val.X;
%val.Y;

%Date de id si val
plot(id.X,id.Y);
hold on
plot(val.X,val.Y);

n=28;

MSE_id=zeros(1,n);
MSE_val=zeros(1,n);
for n=1:28
%polyfit
d=length(id.X);
for i=1:n
phi=zeros(d,n);
for l=1:n
    phi(:,l)=id.X.^l;
end

theta=phi\(id.Y)';
%polyval
v=(length(val.X));
phiV=zeros(v,n);
for k=1:n
    phiV(:,k)=val.X.^k;
end

Y_id=phi*theta;
Y_val=phiV*theta;


e_id=zeros(d,1);
e_val=zeros(v,1);

for p=1:d
  e_id(p)=(id.Y(p)-Y_id(p)).^2;
end
MSE_id(n)=(1/d)*sum(e_id);

for q=1:v
  e_val(q)=sum((val.Y(q)-Y_val(q)).^2);
end
MSE_val(n)=(1/v)*sum(e_val);
end
[minim_val,grad]=min(MSE_val);
if n==22
    figure
plot(val.X,val.Y,val.X,Y_val);
end
end


%plotarile
t=1:length(id.Y);
figure
plot(1:n,MSE_id)
hold on
t=1:length(val.Y);
plot(1:n,MSE_val)


fprintf('MSE min este: %.2f\n',min(MSE_val),grad)

