%% gain-input frequency plot (semilogx, i.e. x-log, y-standard)
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
end % generating x1 in log series

y1 = [20, 20, 19.9, 20.1, 20, 20, 20, 20.3, 14.6, 5.20, 0.67, -16.5, -30.5];
semilogx(x1, y1,"kx","LineWidth", 0.5);
grid on;
xlabel("Frequency $f$, Hz","FontSize",12,'Interpreter',"latex");
ylabel("Gain in dB $G_{dB}$, dB","FontSize",12,'Interpreter',"latex");
% saveas(gcf,'Gain_Frequency_invert_amp.jpg');


% semilogy(x1, y1,"kx","LineWidth", 1.5);
% loglog(x1, y1,"kx","LineWidth", 1.5);
