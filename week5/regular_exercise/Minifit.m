function p=Minifit(x,y,m)
%��С���˷�����ʽ�������
%x�ǽڵ�������y�ǽڵ��ϵĺ���ֵ����
%mΪ���ж���ʽ��ϵĶ���ʽ�Ĵ���
%p���ض���ʽ��ϵ�� �Ұ���������
A=zeros(m+1,m+1);
for i=0:m
    for j=0:m
        A(i+1,j+1)=sum(x.^(i+j));
    end
    b(i+1)=sum(x.^i.*y);
end
a=A\b';
p=fliplr(a');