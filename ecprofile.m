clc;
clear all;
close all;


%% Figure 5 (f) %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

f1=flipud(imread('5f_1ms.png'));
f2=flipud(imread('5f_2ms.png'));
f3=flipud(imread('5f_3ms.png'));    % Load image files of the elongated cavity


u=10.6;                     % Velocity of the drop train
d=0.41*10^-3;               % Diameter of the drops
f=17000;                    % Frequency of the drop train
R0=0.378*10^-3;             % the initial radius of the cavity, corresponding to the radius of the tip crater at the moment the next drop arrives

phi=d*f/u;                  % Dimensionless frequency

syms x
X=vpasolve(exp(x)-x==1+1/phi,x,10);
X=double(X);                % Numerically solved (h_0/d) from equation (3.4)

r=0:d/1000:0.01;
z=(phi*X^1.5/0.3/(1+phi*X)/d^2*(r.^2-R0^2) + phi*X/(1+phi*X)*(1/phi+X)) *d;     % Equation (3.9) in the paper

%% at 3 ms
r(z>0.014)=[];
r(z<0)=[];
z(z>0.014)=[];
z(z<0)=[];

cal=0.003/116;              % Picture calibration
xorigin=146;                % x coordinate of the origin
yorigin=60;                % y coordinate of the origin
[rows, columns, channels] = size(f3);

figure(1)                  % Figure 5(f): Elongated cavity at 3 ms
subplot(1,3,3);
image('CData',f3,'XData',[-xorigin*cal (columns-xorigin)*cal],'YData',[-yorigin*cal (rows-yorigin)*cal])        % Elongated cavity picture
hold on

plot(r,z,'r','LineWidth',1);            % Profile of the elognated cavity
plot([0 r(length(r))],zeros(2),'w');	% x-axis
plot(zeros(2),[0 z(length(z))],'w');    % y-axis
axis equal
axis([-xorigin*cal (columns-xorigin)*cal -yorigin*cal (rows-yorigin)*cal])

%% at 2 ms
r(z>0.0085)=[];
z(z>0.0085)=[];

xorigin=136;                % x coordinate of the origin
yorigin=302;                % y coordinate of the origin
[rows, columns, channels] = size(f2);

figure(1)                  % Figure 5(f): Elongated cavity at 2 ms
subplot(1,3,2);
image('CData',f2,'XData',[-xorigin*cal (columns-xorigin)*cal],'YData',[-yorigin*cal (rows-yorigin)*cal])        % Elongated cavity picture
hold on

plot(r,z,'r','LineWidth',1);            % Profile of the elognated cavity
plot([0 r(length(r))],zeros(2),'w');	% x-axis
plot(zeros(2),[0 z(length(z))],'w');    % y-axis
axis equal
axis([-xorigin*cal (columns-xorigin)*cal -yorigin*cal (rows-yorigin)*cal])

%% at 1 ms
r(z>0.0035)=[];
z(z>0.0035)=[];

xorigin=138;                % x coordinate of the origin
yorigin=514;                % y coordinate of the origin
[rows, columns, channels] = size(f1);

figure(1)                  % Figure 5(f): Elongated cavity at 1 ms
subplot(1,3,1);
image('CData',f1,'XData',[-xorigin*cal (columns-xorigin)*cal],'YData',[-yorigin*cal (rows-yorigin)*cal])        % Elongated cavity picture
hold on

plot(r,z,'r','LineWidth',1);            % Profile of the elognated cavity
plot([0 r(length(r))],zeros(2),'w');	% x-axis
plot(zeros(2),[0 z(length(z))],'w');    % y-axis
axis equal
axis([-xorigin*cal (columns-xorigin)*cal -yorigin*cal (rows-yorigin)*cal])








%% Figure 5 (g) %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

g1=flipud(imread('5g_1ms.png'));
g2=flipud(imread('5g_2ms.png'));
g3=flipud(imread('5g_3ms.png'));    % Load image files of the elongated cavity


u=9.4;                      % Velocity of the drop train
d=0.34*10^-3;               % Diameter of the drops
f=17000;                    % Frequency of the drop train
R0=0.386*10^-3;             % the initial radius of the cavity, corresponding to the radius of the tip crater at the moment the next drop arrives

phi=d*f/u;                  % Dimensionless frequency

syms x
X=vpasolve(exp(x)-x==1+1/phi,x,10);
X=double(X);                % Numerically solved (h_0/d) from equation (3.4)

r=0:d/1000:0.01;
z=(phi*X^1.5/0.3/(1+phi*X)/d^2*(r.^2-R0^2) + phi*X/(1+phi*X)*(1/phi+X)) *d;     % Equation (3.9) in the paper

%% at 3 ms
r(z>0.0105)=[];
r(z<0)=[];
z(z>0.0105)=[];
z(z<0)=[];

cal=0.003/163;              % Picture calibration
xorigin=137;                % x coordinate of the origin
yorigin=11;                % y coordinate of the origin
[rows, columns, channels] = size(g3);

figure(2)                  % Figure 5(g): Elongated cavity at 3 ms
subplot(1,3,3);
image('CData',g3,'XData',[-xorigin*cal (columns-xorigin)*cal],'YData',[-yorigin*cal (rows-yorigin)*cal])        % Elongated cavity picture
hold on

plot(r,z,'r','LineWidth',1);            % Profile of the elognated cavity
plot([0 r(length(r))],zeros(2),'w');	% x-axis
plot(zeros(2),[0 z(length(z))],'w');    % y-axis
axis equal
axis([-xorigin*cal (columns-xorigin)*cal -yorigin*cal (rows-yorigin)*cal])

%% at 2 ms
r(z>0.0065)=[];
z(z>0.0065)=[];

xorigin=139;                % x coordinate of the origin
yorigin=220;                % y coordinate of the origin
[rows, columns, channels] = size(g2);

figure(2)                  % Figure 5(g): Elongated cavity at 2 ms
subplot(1,3,2);
image('CData',g2,'XData',[-xorigin*cal (columns-xorigin)*cal],'YData',[-yorigin*cal (rows-yorigin)*cal])        % Elongated cavity picture
hold on

plot(r,z,'r','LineWidth',1);            % Profile of the elognated cavity
plot([0 r(length(r))],zeros(2),'w');	% x-axis
plot(zeros(2),[0 z(length(z))],'w');    % y-axis
axis equal
axis([-xorigin*cal (columns-xorigin)*cal -yorigin*cal (rows-yorigin)*cal])

%% at 1 ms
r(z>0.0025)=[];
z(z>0.0025)=[];

xorigin=139;                % x coordinate of the origin
yorigin=431;                % y coordinate of the origin
[rows, columns, channels] = size(g1);

figure(2)                  % Figure 5(g): Elongated cavity at 1 ms
subplot(1,3,1);
image('CData',g1,'XData',[-xorigin*cal (columns-xorigin)*cal],'YData',[-yorigin*cal (rows-yorigin)*cal])        % Elongated cavity picture
hold on

plot(r,z,'r','LineWidth',1);            % Profile of the elognated cavity
plot([0 r(length(r))],zeros(2),'w');	% x-axis
plot(zeros(2),[0 z(length(z))],'w');    % y-axis
axis equal
axis([-xorigin*cal (columns-xorigin)*cal -yorigin*cal (rows-yorigin)*cal])








%% Figure 5 (h) %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

h1=flipud(imread('5h_1ms.png'));
h2=flipud(imread('5h_2ms.png'));
h3=flipud(imread('5h_3ms.png'));    % Load image files of the elongated cavity


u=6.4;                      % Velocity of the drop train
d=0.43*10^-3;               % Diameter of the drops
f=7000;                     % Frequency of the drop train
R0=0.538*10^-3;             % the initial radius of the cavity, corresponding to the radius of the tip crater at the moment the next drop arrives

phi=d*f/u;                  % Dimensionless frequency

syms x
X=vpasolve(exp(x)-x==1+1/phi,x,10);
X=double(X);                % Numerically solved (h_0/d) from equation (3.4)


r=0:d/1000:0.01;
z=(phi*X^1.5/0.3/(1+phi*X)/d^2*(r.^2-R0^2) + phi*X/(1+phi*X)*(1/phi+X)) *d;     % Equation (3.9) in the paper

%% at 3 ms
r(z>0.007)=[];
r(z<0)=[];
z(z>0.007)=[];
z(z<0)=[];

cal=0.003/188;              % Picture calibration
xorigin=167;                % x coordinate of the origin
yorigin=75;                % y coordinate of the origin
[rows, columns, channels] = size(h3);

figure(3)                  % Figure 5(h): Elongated cavity at 3 ms
subplot(1,3,3);
image('CData',h3,'XData',[-xorigin*cal (columns-xorigin)*cal],'YData',[-yorigin*cal (rows-yorigin)*cal])        % Elongated cavity picture
hold on

plot(r,z,'r','LineWidth',1);            % Profile of the elognated cavity
plot([0 r(length(r))],zeros(2),'w');	% x-axis
plot(zeros(2),[0 z(length(z))],'w');    % y-axis
axis equal
axis([-xorigin*cal (columns-xorigin)*cal -yorigin*cal (rows-yorigin)*cal])

%% at 2 ms
r(z>0.005)=[];
z(z>0.005)=[];

xorigin=167;                % x coordinate of the origin
yorigin=238;                % y coordinate of the origin
[rows, columns, channels] = size(h2);

figure(3)                  % Figure 5(h): Elongated cavity at 2 ms
subplot(1,3,2);
image('CData',h2,'XData',[-xorigin*cal (columns-xorigin)*cal],'YData',[-yorigin*cal (rows-yorigin)*cal])        % Elongated cavity picture
hold on

plot(r,z,'r','LineWidth',1);            % Profile of the elognated cavity
plot([0 r(length(r))],zeros(2),'w');	% x-axis
plot(zeros(2),[0 z(length(z))],'w');    % y-axis
axis equal
axis([-xorigin*cal (columns-xorigin)*cal -yorigin*cal (rows-yorigin)*cal])

%% at 1 ms
r(z>0.0025)=[];
z(z>0.0025)=[];

xorigin=167;                % x coordinate of the origin
yorigin=408;                % y coordinate of the origin
[rows, columns, channels] = size(h1);

figure(3)                  % Figure 5(h): Elongated cavity at 1 ms
subplot(1,3,1);
image('CData',h1,'XData',[-xorigin*cal (columns-xorigin)*cal],'YData',[-yorigin*cal (rows-yorigin)*cal])        % Elongated cavity picture
hold on

plot(r,z,'r','LineWidth',1);            % Profile of the elognated cavity
plot([0 r(length(r))],zeros(2),'w');	% x-axis
plot(zeros(2),[0 z(length(z))],'w');    % y-axis
axis equal
axis([-xorigin*cal (columns-xorigin)*cal -yorigin*cal (rows-yorigin)*cal])







