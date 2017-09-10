function yi=Newton(x,y,x0)
%Newton��ֵ��
%x�ǽڵ�������y�ǽڵ��ϵ�ֵ����ڵ�����Ԫ��һһ��Ӧ
%x0����Ҫ�ò�ֵ����ֵ�ĵ㣬����������ʽ������
%yi�ǲ�ֵ��ķ��ؽ��
n=length(x);
m=length(y);
if m~=n
    disp('����x��y��ά����һ����');
    return
end
A=zeros(n);   %������̱�
A(:,1)=y;     %���̱��һ��Ϊy
for j=2:n     %jΪ�б�
    for i=1:(n-j+1)   %iΪ�б�
        A(i,j)=(A(i+1,j-1)-A(i,j-1))/(x(i+j-1)-x(i));   %������̱�
    end
end        
%���ݲ��̱����Ӧ��Newton��ֵ����ʽ��x=xi����ֵyi
N(1)=A(1,1);
for j=2:n
    T=1;
    for i=1:j-1
        T=T*(x0-x(i));
    end
    N(j)=A(1,j)*T;
end
yi=sum(N);   %��x=xi�����ֵ����ʽ���õ�yi��ֵ
end
