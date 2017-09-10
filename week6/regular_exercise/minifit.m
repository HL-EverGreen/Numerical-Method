function y=minifit(y,h,m,n)
%������Ϊ����С������Ϸ�������ϵʽ
%����yΪ���ݽڵ�������hΪ��Ӧ��ֵ������mΪ������ά����nΪ��ϵĽ���
for i=1:m                         %���Ա�����ֵ�������
    for j=1:n+1
        c(i,j)=y(i)^(j-1);
    end
end
a=c'*c;                           %���ݿμ��й�ʽ��þ���a,b
b=c'*h';
%-----�����������Ԫ��Ԫ-----%
n=5;                               %��Ͻ�����һ
ab=[a b];
for i=1:n-1
    [M,index]=max(abs(ab(i:n,i)));   %�õ�����Ԫ����λ��
    index=index+i-1;
    if ab(index,i)==0                %�ж��Ƿ��������
        error('singular matrix!!!')  
    end
    if index~=i                      %�����л���
        temp=ab(index,:);
        ab(index,:)=ab(i,:);
        ab(i,:)=temp;
    end
    for j=i+1:n                      %�������Ϊ������
        if ab(j,i)~=0
            ab(j,i:n+1)=ab(j,i:n+1)-ab(j,i)/ab(i,i)*ab(i,i:n+1);
        end
        
    end
end
x(n,1)=ab(n,n+1)/ab(n,n);            
i=n-1;
while i>=1                           %���õ���xԪ�ش���ǰһ�з���ʽ�õ������
    x(i)=(ab(i,n+1)-ab(i,i+1:n)*x(i+1:n))/ab(i,i);
    i=i-1;
end
for i=n+1:8
    x(i,1)=0;
end
%-----��Ԫ�����������x������---%
plot(y,h,'*');                       %���������ͼ
hold on
y=0;
t=0:0.001:20
y=y+x(1)+x(2)*t+x(3)*t.^2+x(4)*t.^3+x(5)*t.^4+x(6)*t.^5+x(7)*t.^6+x(8)*t.^7;
plot(t,y);
xlabel('�������ľ���r   ��λ��cm');
ylabel('Һ������v   ��λ��cm/s');
title('�߽���С�������');
hold on
x                                    %�������ʽϵ��