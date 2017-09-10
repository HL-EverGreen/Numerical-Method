function x=GaussElimination_column1(~)
%�ó�������Gauss����Ԫ��ȥ�������Է�����Ľ�
%����������ϵ������A��B���������������Ľ����ı��ռ�X�Ľ���
%����ϵ��������3x3ʱ���ı�XΪ[0,0,0]
%�ó�������ĸ������ϵ������A������ʽ��ֵ��Gauss����Ԫ��ȥ�����õľ���A��B���Լ���X
n1=8;            %������Ŀ�е�nֵ
for i=1:n1+1     %����ϵ������A
    for j=1:n1+1
        A(i,j)=(1+0.1*(i-1))^(j-1);
    end
end
A
for j=1:n1+1      %����ϵ������B
    B(j,1)=0;
    for i=1:n1+1
        B(j,1)=B(j,1)+A(j,i);
    end
end
B
cond(A)           %A��������
for i=1:n1+1
    X(i)=0;
end
n=n1+1;           %ʵ�ʽ����������n1��1
if rank(A)==n      %���A���ȵ���n�����������Է�������n��ʵ���⣬����������
max=0;             %��ʼ��max max���ڴ��һ��������Ԫ�صľ���ֵ��ֵ
temp=0;            %��ʼ��temp�����ڽ���Ԫ��
max_i=0;           %��ʼ�����Ԫ��������
factor=0;          %��ʼ���̣�����Gauss��ȥ
for k=1:n-1        %k��ʾ�У��ӵ�1�п�ʼ��n-1�н���Gauss��ȥ
    max_i=k;           %ÿ�θı�k��ֵ��Ԥ�������Ϊ��k��
    max=abs(A(k,k));   %ÿ�θı�k��ֵԤ�����Ԫ��ΪA��k,k)
    for i=k+1:n        %ѡȡ���Ԫ�أ�ȷ����������
        if max<abs(A(i,k))
            max=abs(A(i,k));
            max_i=i;
        end
    end
    if max_i~=k        %������k�����¾���ֵ����Ԫ�����������k�н���
    for i=k:n
       temp=A(k,i);
       A(k,i)=A(max_i,i);
       A(max_i,i)=temp;
    end
    temp=B(k);         %ͬ������B����
       B(k)=B(max_i);
       B(max_i)=temp;
    end
    for i=k+1:n        %����Gauss��ȥ
        factor=A(i,k)/A(k,k);
        for j=k:n
            A(i,j)=A(i,j)-factor*A(k,j);
        end
        B(i)=B(i)-factor*B(k);  %B����ͬ��������ȥ
    end
end
X(n)=B(n)/A(n,n);    %���ûش������μ����������
for i=n-1:-1:1
    sum=B(i);
    for j=i+1:n
    sum=sum-A(i,j)*X(j);
    end
    X(i)=sum/A(i,i);
end
A,B,X
else disp('The equations have infinite solutions or may have no solution');
    %���A���Ȳ�����n����������������޽���߿����޽�
end
