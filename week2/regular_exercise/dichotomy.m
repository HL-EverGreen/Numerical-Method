function  h=dichotomy(~)
%���ö��ַ����㷽�̵ĸ�
%��ʼ����������Ϊ(0,6)
%������f(x)=-pi*x^3+9*pi*x^2-90;
%������Ľ�����پ���8λ��Ч����ʱ������ֹ
xl=0;    %��ʼ����������������
xu=6;    %��ʼ����������������
e_s=5e-9; %������ֹ����
xr=3;     %��ʼ���Ĺ���ֵ
xr_last=0; %��ʼ����һ�εĹ���ֵ
i=0;      %��ʼ����������
if f(xl)*f(xu)>0    %�ж��������Ƿ��и�
    error('invalid input');
else
    while abs(xr-xr_last)/xr>e_s    %���������������e_sʱ��������
        i=i+1;
    if f(xr)==0;   %�жϸ�����ֵ�ĺ���ֵ�Ƿ�Ϊ0
    break;
    end
     if f(xr)*f(xu)<0   %������(xr,xu���ϣ����µ�������߽�ֵ
            xl=xr;
            xr_last=xr;
            xr=(xl+xu)/2;
        else xr_last=xr; %������(xl,xr����
             xu=xr;
             xr=(xl+xu)/2;
     end
      i,xl,xu,xr,abs(xr-xr_last)/xr
    end
end
   
            

