function y=week1_exercise1_access1_double(a,b,c)

delta=b*b-4*a*c;  %��������ʽ
if delta>=0        %�жϷ��̵Ľ��Ƿ�Ϊʵ��
    x1=(-b+sqrt(delta))/(2*a);  %����x1
    x2=(-b-sqrt(delta))/(2*a);  %����x2
else fprintf('error in parameter');
end
x1,x2
