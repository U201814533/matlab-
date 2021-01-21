clc, clear all , close all
%% mesh �÷�
x = linspace(-2,2,25);
y = linspace(-2,2,25);
[xx,yy] = meshgrid(x,y);
zz = xx.*exp(-xx.^2 - yy.^2);
figure(1); mesh(xx,yy,zz);

%% surf�÷�
x = linspace(-2,2,25);
y = linspace(-2,2,25);
[xx,yy] = meshgrid(x,y);
zz = xx.*exp(-xx.^2 - yy.^2);
figure(2);surf(xx,yy,zz);

%% meshz�ɽ��������Χȹ
z = 3*(1-x).^2.*exp(-(x.^2)-(y+1).^2)...
    -10*(x/5-x.^3-y.^5).*exp(-x.^2-y.^2)...
    -1/3*exp(-(x+1).^2-y.^2);
figure(3);
[x,y,z] = peaks;
meshz(x,y,z);
axis([-inf inf -inf inf -inf inf]);

%% waterfall����x�����y�������ˮ��Ч��
[x,y,z] = peaks;
figure(4);
waterfall(x,y,z);
axis([-inf inf -inf inf -inf inf]);

%y����ˮ��Ч��
figure(5);
[x,y,z] = peaks;
waterfall(x',y',z');
axis([-inf inf -inf inf -inf inf]);

%% meshcͬʱ������״ͼ��ȸ���
[x,y,z] = peaks;
figure(6);
meshc(x,y,z);
axis([-inf inf -inf inf -inf inf]);

%surfcͬʱ��������ͼ��ȸ���
[x,y,z] = peaks;
figure(7);
surfc(x,y,z);
axis([-inf inf -inf inf -inf inf]);

%% contour3�������������ȿռ��еĵȸ���
figure(8);
contour3(peaks,60);
axis([-inf inf -inf inf -inf inf]);

%contour��������ȸ�����xyƽ���ͶӰ
figure(9);
contour(peaks,60);

%% plot3�ɻ������ȿռ��е�����
t = linspace(0,10*pi,500);
figure(10);
plot3(t.*sin(t),t.*cos(t),t);

t = linspace(0,10*pi,500);
figure(11);
plot3(t.*sin(t),t.*cos(t),t, t.*sin(t),t.*cos(t),-t);