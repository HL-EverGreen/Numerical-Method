function y=Romberg(a,b,n)
%采用Romberg积分法计算结果
%a为积分区间左端点，b为积分区间右端点，n为Richardson外推法中的幂次m
f=@(x)(fr(x));
tol=5e-11;        %误差容限
M=1;
h=b-a;
err=1;            %误差估计
J=0;
R=zeros(4,4);
R(1,1)=h*(feval(f,a)+feval(f,b))/2;
while ((err>tol)&(J<n))|(J<4)
    J=J+1;
    h=h/2;
    s=0;
    for p=1:M
        x=a+h*(2*p-1);
        s=s+feval(f,x);
    end
    R(J+1,1)=R(J,1)/2+h*s;
    M=2*M;
    for K=1:J
        R(J+1,K+1)=R(J+1,K)+(R(J+1,K)-R(J,K))/(4^K-1);
    end
    err=abs(R(J,J)-R(J+1,K+1));
end
quad=R(J+1,J+1);         %Romberg积分法最后结果
R