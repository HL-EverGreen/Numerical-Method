function y=week1_exercise2_question1(~)
%����Ϊ�����ȼ������----------------------------------------------------------
sum=single(0);               %��ʼ����ǰ�������
real_deviation=single(0);    %��ʼ����ǰ�����������ֵ��ľ���ֵ
e_s=single(5e-5);            %��ʼ���ݲ�
e_a=single(1);               %��ʼ����ǰ�����������ʹ���ܹ�����whileѭ��
i=single(0);                 %��������
item=single(1);              %���ڼ��㣨2*i+1)!����ʼֵΪi=0ʱ��2*i+1)!��ֵ
last_sum=single(0);          %��ʼ���ϴε��������ֵ
real_value=single(sin(0.5)); %������ֵ
fprintf('when the type of data is single:');

while abs(e_a)>e_s   %����ǰ�������С���ݲ�ʱֹͣ����
    last_sum=single(sum);    %���ϴε��������ֵ��last_sum
    sum=single(sum+((-1)^i)*0.5^(2*i+1)/(item));    %��һ�ֵ���
    i=i+1;           %�������i��1
    item=single(item*2*i*(2*i+1));    %Ԥ�ȼ����´ε������õķ�ĸ
    e_a=single((sum-last_sum)/sum);   %���㵱ǰ����������
    real_deviation=single(abs(sum-real_value)); %���㵱ǰ�����������ֵ�ľ������ľ���ֵ
    sum,real_deviation,i   %ÿ�ֵ������������ֵĵ����������ֵƫ��͵�������
end
 %����Ϊ˫���ȼ������--------------------------------------------------------------
fprintf('when the type of data is double:'); 
sum=0;               %��ʼ����ǰ�������
real_deviation=0;    %��ʼ����ǰ�����������ֵ��ľ���ֵ
e_s=5e-5;            %��ʼ���ݲ�
e_a=1;               %��ʼ����ǰ�����������ʹ���ܹ�����whileѭ��
i=0;                 %��������
item=1;              %���ڼ��㣨2*i+1)!����ʼֵΪi=0ʱ��2*i+1)!��ֵ
last_sum=0;          %��ʼ���ϴε��������ֵ
real_value=sin(0.5); %������ֵ

while abs(e_a)>e_s   %����ǰ�������С���ݲ�ʱֹͣ����
    last_sum=sum;    %���ϴε��������ֵ��last_sum
    sum=sum+((-1)^i)*0.5^(2*i+1)/(item);    %��һ�ֵ���
    i=i+1;           %�������i��1
    item=item*2*i*(2*i+1);    %Ԥ�ȼ����´ε������õķ�ĸ
    e_a=(sum-last_sum)/sum;   %���㵱ǰ����������
    real_deviation=abs(sum-real_value); %���㵱ǰ�����������ֵ�ľ������ľ���ֵ
    sum,real_deviation,i   %ÿ�ֵ������������ֵĵ����������ֵƫ��͵�������
end
real_value   %�����ֵ