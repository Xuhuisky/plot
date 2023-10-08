load("lab3individual.mat");
scatter(x,y,4, "k","LineWidth",0.5);
%legend(["Cold Cola axial strain","Cold Cola circumferential strain"],"Interpreter","latex");

box on;
ax = gca;
ax.FontSize = 12; % thicken the ticklabels
xlabel("Time $t$,s","FontSize",12,'Interpreter',"latex");
ylabel("Voltage $V$, V","FontSize",12,'Interpreter',"latex");
%saveas(gcf,'Cold_Cola.jpg');

hold off;
x_2 = 0:0.5:500;
y_2 = 3.341*sin(0.007283*x_2)-7.727*cos(0.007283*x_2)-...
6.017*sinh(0.007283*x_2)+7.88*cosh(0.007283*x_2);
load("video\pointdata3.mat");
plot(case4(:,1), case4(:,2),"kx","LineWidth", 1.5);
hold on;
plot(x_2,y_2, "k--","LineWidth",1);

legend(["Collected data","Fitted curve"],"Interpreter","latex");
xlim([-5 510]);
box on;
ax = gca;
ax.FontSize = 12; % thicken the ticklabels
xlabel("Coordinate $x$, pixel","FontSize",12,'Interpreter',"latex");
ylabel("Amplitude $X$, pixel","FontSize",12,'Interpreter',"latex");
%saveas(gcf,'Cold_Cola.jpg');

hold off;
x_3 = linspace(-0.02,0.3,100);
y_3 = -0.008586 *sin(6.805*x_3)+0.002763 *cos(6.805*x_3)+...
0.02643*sinh(6.805*x_3)-0.002763*cosh(6.805*x_3);
load("video\pointdata4.mat");
plot(ccase3m(:,1), ccase3m(:,2),"kx","LineWidth", 1.5);
hold on;
plot(x_3,y_3, "k--","LineWidth",1);

legend(["Collected data","Fitted curve"],"Interpreter","latex");
xlim([-0.08 0.32]);
box on;
ax = gca;
ax.FontSize = 12; % thicken the ticklabels
xlabel("Coordinate $x$, m","FontSize",12,'Interpreter',"latex");
ylabel("Amplitude $X$, m","FontSize",12,'Interpreter',"latex");
%saveas(gcf,'Cold_Cola.jpg');

x_4 = linspace(0,0.5,100);
y_4 = -(2*x_4.^2-2*x_4-1)./(2*x_4.^2-2*x_4+2);

plot(x_4,y_4, "k","LineWidth",0.5);
%legend(["Cold Cola axial strain","Cold Cola circumferential strain"],"Interpreter","latex");


box on;
ax = gca;
ax.FontSize = 12; % thicken the ticklabels
xlabel("Time $t$,s","FontSize",12,'Interpreter',"latex");
ylabel("Voltage $V$, V","FontSize",12,'Interpreter',"latex");

%% Example for log-log scale & semi-log scale plot
hold off;
ia = 10;
x1 = zeros(1,13);
ic = 0;
while ia <= 1e7
    ic = ic+1;
    if mod(ia,3) == 1
        x1(1,ic) = ia;
        ia = ia*3;
    else
        x1(1,ic) = ia;
        ia = ia*10/3;
    end
end % generating x1

y1 = [20, 20, 19.9, 20.1, 20, 20, 20, 20.3, 14.6, 5.20, 0.67, -16.5, -30.5];
semilogx(x1, y1,"kx","LineWidth", 1.5);
% saveas(gcf,'Cold_Cola.jpg');
% semilogy(x1, y1,"kx","LineWidth", 1.5);
% loglog(x1, y1,"kx","LineWidth", 1.5);
