function y=week1_exercise1_access1_single(a,b,c)
a=single(a);       %������ת��
b=single(b);       %������ת��
c=single(c);       %������ת��
delta=single(b*b-4*a*c);  %��������ʽ
if delta>=0        %�жϷ��̵Ľ��Ƿ�Ϊʵ��
    x1=single((-b+sqrt(delta))/(2*a));  %����x1
    x2=single((-b-sqrt(delta))/(2*a));  %����x2
else fprintf('error in parameter');
end
x1,x2
