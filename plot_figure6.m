%% ֱ��ͼͼ�Ļ���
%ֱ��ͼ������ͼ�ͣ���ֱֱ��ͼ��ˮƽֱ��ͼ����ÿ��ͼ���������ֱ���ģʽ���ۼ�ʽ������ʽ��
figure;
z=[3,5,2,4,1;3,4,5,2,1;5,4,3,2,5]; % �����ص���Թ��׷ݶ�
colormap(cool);% ����ͼ����ɫ
subplot(2,3,1);
bar(z);%��ά����ʽֱ��ͼ,Ĭ�ϵ�Ϊ'group'
title('2D default');
subplot(2,3,2);
bar3(z);%��ά�ķ���ʽֱ��ͼ
title('3D default');
subplot(2,3,3);
barh(z,1);%����ʽˮƽֱ��ͼ���������Ϊ1
title('vert width=1');
subplot(2,3,4);
bar(z,'stack');%�ۼ�ʽֱ��ͼ������:1,1+2,1+2+3�����˵�һ��bar
title('stack')
subplot(2,3,5);
bar3h(z,0.5,'stacked');%��ά�ۼ�ʽˮƽֱ��ͼ
title('vert width=1 stack');
subplot(2,3,6);
bar3(z,0.8,'grouped');%��������ݵ���ɫ���з��飬Ĭ�ϵ�λ'group'
title('width=0.8 grouped');