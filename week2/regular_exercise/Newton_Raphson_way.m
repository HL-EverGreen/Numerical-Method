function y=Newton_Raphson_way(~)
%����Newton-Raphson�������и������
%������ʼֵΪh=2
%iΪ�������� hiΪ��ǰ������� e_aΪ��ǰ�������
%�����������پ���8λ��Ч����ʱֹͣ����
%������newtoncircle(h)��������Newton-Raphson��ʽ�ĵ���
h=2;    %��ʼ����ʼ������
e_s=5e-9;   %����ʹ���������پ���8λ��Ч���ֵ��ݲ�
last_hi=h;  %��ʼ����һ�ε������
e_a=1;      %��ʼ����ǰ���������ʹ���ܽ����һ��ѭ��
i=0;        %��ʼ����������
hi=0;       %��ʼ����ǰ�������
while e_a>e_s     %��ǰ�������С���ݲ�ʱ������ֹ
    i=i+1; 
    hi=newtoncircle(h);  %����newtoncirclr�������㵱ǰ�������
    e_a=abs(hi-last_hi)/hi;   %���㵱ǰ�������
    h=hi;           %����h
    last_hi=hi;     %����last_hi
    i,hi,e_a
end

