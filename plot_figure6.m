%% 直方图图的绘制
%直方图有两种图型：垂直直方图和水平直方图。而每种图型又有两种表现模式：累计式：分组式。
figure;
z=[3,5,2,4,1;3,4,5,2,1;5,4,3,2,5]; % 各因素的相对贡献份额
colormap(cool);% 控制图的用色
subplot(2,3,1);
bar(z);%二维分组式直方图,默认的为'group'
title('2D default');
subplot(2,3,2);
bar3(z);%三维的分组式直方图
title('3D default');
subplot(2,3,3);
barh(z,1);%分组式水平直方图，宽度设置为1
title('vert width=1');
subplot(2,3,4);
bar(z,'stack');%累计式直方图，例如:1,1+2,1+2+3构成了第一个bar
title('stack')
subplot(2,3,5);
bar3h(z,0.5,'stacked');%三维累计式水平直方图
title('vert width=1 stack');
subplot(2,3,6);
bar3(z,0.8,'grouped');%对相关数据的颜色进行分组，默认的位'group'
title('width=0.8 grouped');