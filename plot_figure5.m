clc, clear all , close all
%% mesh 用法
x = linspace(-2,2,25);
y = linspace(-2,2,25);
[xx,yy] = meshgrid(x,y);
zz = xx.*exp(-xx.^2 - yy.^2);
figure(1); mesh(xx,yy,zz);

%% surf用法
x = linspace(-2,2,25);
y = linspace(-2,2,25);
[xx,yy] = meshgrid(x,y);
zz = xx.*exp(-xx.^2 - yy.^2);
figure(2);surf(xx,yy,zz);

%% meshz可将曲面加上围裙
z = 3*(1-x).^2.*exp(-(x.^2)-(y+1).^2)...
    -10*(x/5-x.^3-y.^5).*exp(-x.^2-y.^2)...
    -1/3*exp(-(x+1).^2-y.^2);
figure(3);
[x,y,z] = peaks;
meshz(x,y,z);
axis([-inf inf -inf inf -inf inf]);

%% waterfall可在x方向或y方向产生水流效果
[x,y,z] = peaks;
figure(4);
waterfall(x,y,z);
axis([-inf inf -inf inf -inf inf]);

%y方向水流效果
figure(5);
[x,y,z] = peaks;
waterfall(x',y',z');
axis([-inf inf -inf inf -inf inf]);

%% meshc同时画出网状图与等高线
[x,y,z] = peaks;
figure(6);
meshc(x,y,z);
axis([-inf inf -inf inf -inf inf]);

%surfc同时画出曲面图与等高线
[x,y,z] = peaks;
figure(7);
surfc(x,y,z);
axis([-inf inf -inf inf -inf inf]);

%% contour3画出曲面在三度空间中的等高线
figure(8);
contour3(peaks,60);
axis([-inf inf -inf inf -inf inf]);

%contour画出曲面等高线在xy平面的投影
figure(9);
contour(peaks,60);

%% plot3可画出三度空间中的曲线
t = linspace(0,10*pi,500);
figure(10);
plot3(t.*sin(t),t.*cos(t),t);

t = linspace(0,10*pi,500);
figure(11);
plot3(t.*sin(t),t.*cos(t),t, t.*sin(t),t.*cos(t),-t);