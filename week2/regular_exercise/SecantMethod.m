function y=SecantMethod(~)
%���ø��߷��󷽳̵ĸ�
%����f(h)����h=hiʱ������ֵ
%i��ʾ�������� hi��ʾ��ǰ������� e_a��ʾ��ǰ�������
%������������پ���8λ׼ȷ����Ч����ʱ��������ֹ
h1=1;    %ѡȡ��ʼֵh1=1��
h2=1.5;  %ѡȡ��ʼֵh2=1.5��
last_hi=h2;   %��ʼ��h(i-1)����last_hi
last_last_hi=h1;  %��ʼ��h(i-2)����last_last_hi
e_s=5e-9;        %�����ݲ�
e_a=1;           %��ʼ����ǰ�������ʹ���ܽ����һ��ѭ��
i=0;             
while e_a>e_s    %����ǰ�����������ݲ�ʱ��������
    hi=last_hi-f(last_hi)*(last_hi-last_last_hi)/(f(last_hi)-f(last_last_hi));
    %������һ�ֵ����Ľ��
    e_a=abs(hi-last_hi)/hi;  %���㵱ǰ�������
    last_last_hi=last_hi;    %����last_last_hi
    last_hi=hi;              %����last_hi
    i=i+1;
    i,hi,e_a
end
    
    
