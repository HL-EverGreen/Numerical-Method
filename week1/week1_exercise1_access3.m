function y=week1_exercise1_access3(a,b,c)

delta=b*b-4*a*c;  %��������ʽ
if delta>=0        %�жϷ��̵Ľ��Ƿ�Ϊʵ��
    if b>0         %�ж�b�ķ���
    x1=(-b-sqrt(delta))/(2*a);  %b>0ʱ�ø�ʽ����x1
    else 
    x1=(-b+sqrt(delta))/(2*a);  %b<0ʱ�ø�ʽ����x1
    end
    x2=c/(a*x1);                %����Τ�ﶨ�����x2
else fprintf('error in parameter');
end
x1,x2
