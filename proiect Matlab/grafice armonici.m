f=50; %setam frecventa semnalelor
T=1/f %calculam perioada semnalelor
t=0:0.001:2*T; %alegem un interval de timp de reprezentare
ph1=60*pi/180; %calculam primul defazaj transormare in rad
ph2=150*pi/180; %calculam al doilea defazaj transormare in rad
x=sin(2*pi*f*t); %calculam primul sinus
x1=sin(2*pi*f*t+ph1); %calculam al 2 sinus
x2=sin(2*pi*f*t+ph2); %calculam al 3 sinus
plot(t,x,'-or'); %afisam primul sinus
hold on; %il mentinem pe axe
plot(t,x1,':db'); %afisam al doilea sinus
hold on; %il mentinem pe axe
plot(t,x2,'--Xg'); %afisam cel de-al treilea sinus
grid on;
title('Reprezentare sinus');%atribuim un titlu graficului
xlabel('timp [s]'); %scriem text pe axa x
ylabel('Amplitudine [V]'); %scriem text pe axa y
legend('x1','x2','x3'); %inseram o legenda