function SanWanJu(x,y,x1,y1,ya,yb)
n=length(x);
m=length(y);
if m~=n
    disp('x��yά����һ�£�');
    return 
end
h=zeros(n,1);
h(1)=x(1)-x1;
for k=2:n
    h(k)=x(k)-x(k-1);
end
[a,b,c,d]=tri_diagonal_matrix(x,y,x1,y1,ya,yb);    %���ù������ԽǾ���ĺ���
M=chase(a,b,c,d);             %����Thomas�㷨������ԽǾ���
syms X;
S(1)=collect(((1/6)*M(2)*(X-x1).^3-(1/6)*M(1)*(X-x(1)).^3+(y(1)-(M(2)*h(1).^2)/6)*(X-x1)-(y1-(M(1)*h(1).^2)/6)*(X-x(1)))/h(1));
for k=2:n
    S(k)=collect(((1/6)*M(k+1)*(X-x(k-1)).^3-(1/6)*M(k)*(X-x(k)).^3+(y(k)-(M(k+1)*h(k).^2)/6)*(X-x(k-1))-(y(k-1)-(M(k)*h(k).^2)/6)*(X-x(k)))/h(k));
end
S=S.';
disp(S);
pretty(S);    %�����д��ʽ

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    