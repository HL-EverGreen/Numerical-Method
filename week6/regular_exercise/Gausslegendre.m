function I=Gausslegendre(~)
%��Gauss-Legendre������ֹ�ʽ���л������
x1=sqrt(15)/5;                
x2=-sqrt(15)/5;
I=5/9*fr(10+10*x1)+5/9*fr(10+10*x2)+8/9*fr(10);    %������ƻ���
I=10*I;                         %������任v=10+10*vd��ɵ�����
I