function y=week1_exercise2_question2(~)

sum=single(0);               %��ʼ����ǰ�������
real_deviation=single(0);    %��ʼ����ǰ�����������ֵ��ľ���ֵ
e_a=single(1);               %��ʼ����ǰ�����������ʹ���ܹ�����whileѭ��
i=single(0);                 %��������
item=single(1);              %���ڼ��㣨2*i+1)!����ʼֵΪi=0ʱ��2*i+1)!��ֵ
last_sum=single(0);          %��ʼ���ϴε��������ֵ
real_value=single(sin(0.5)); %������ֵ
eps=single(1);               %���������ȸ���ֵ

while single(1+eps)>1   %ѭ��������������1+eps=1����epsС�ڻ������ȱ�ʾΪ0
    eps=single(eps/2);  %����eps����������ж�
end
eps=single(2*eps);

while abs(e_a)>eps   %����ǰ�������С�ڻ�������ʱֹͣ����
    last_sum=single(sum);    %���ϴε��������ֵ��last_sum
    sum=single(sum+((-1)^i)*0.5^(2*i+1)/(item));    %��һ�ֵ���
    i=i+1;           %�������i��1
    item=single(item*2*i*(2*i+1));    %Ԥ�ȼ����´ε������õķ�ĸ
    e_a=single((sum-last_sum)/sum);   %���㵱ǰ����������
    real_deviation=single(abs(sum-real_value)); %���㵱ǰ�����������ֵ�ľ������ľ���ֵ
    sum,real_deviation,i   %ÿ�ֵ������������ֵĵ����������ֵƫ��͵�������
end
real_value   %�����ֵ