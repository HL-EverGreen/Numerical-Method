function y=week1_exercise1_access2(a,b,c)

delta=b*b-4*a*c;  %��������ʽ
if delta>=0        %�жϷ��̵Ľ��Ƿ�Ϊʵ��
    x1=-(2*c)/(b+sqrt(delta));  %�ñ任��������ʽ����x1
    x2=-(2*c)/(b-sqrt(delta));  %�ñ任��������ʽ����x2
else fprintf('error in parameter');
end
x1,x2
