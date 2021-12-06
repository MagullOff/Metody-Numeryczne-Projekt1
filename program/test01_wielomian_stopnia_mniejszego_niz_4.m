function test01_wielomian_stopnia_mniejszego_niz_4()
% Autor Przemysław Kacprzak 313269
%
% Funkcja testuje kwadraturę prostą dla wielomianów stopnia mniejszego niż
% 4, czyli takich, dla których powinna ona wystarczyć do wyznaczenia całki.

    disp("Test wielomianów stopnia 0:");
    disp("   1. f(x,y) = 6");
    fprintf("   całka powinna być równa 12, a jest równa: %f\n",doubleIntSimpsonMain(@(x,y) 6,1,1) );
    fprintf("   błąd: %d\n",  abs(12-doubleIntSimpsonMain(@(x,y) 6,1,1)));
    disp("   2. f(x,y) = 4.5");
    fprintf("   całka powinna być równa 9, a jest równa: %f\n",doubleIntSimpsonMain(@(x,y) 4.5,1,1) );
    fprintf("   błąd: %d\n",  abs(9-doubleIntSimpsonMain(@(x,y) 4.5,1,1)));
    
    disp("Test wielomianów stopnia 1:");
    disp("   1. f(x,y) = x+3y");
    fprintf("   całka powinna być równa 0, a jest równa: %f\n",doubleIntSimpsonMain(@(x,y) x+3*y,1,1) );
    fprintf("   błąd: %d\n",  abs(doubleIntSimpsonMain(@(x,y) x+3*y,1,1)));
    disp("   2. f(x,y) = 17y+3");
    fprintf("   całka powinna być równa 6, a jest równa: %f\n", doubleIntSimpsonMain(@(x,y) 17*y+3,1,1) );
    fprintf("   błąd: %d\n",  abs(6-doubleIntSimpsonMain(@(x,y) 17*y+3,1,1)));
    
    disp("Test wielomianów stopnia 2:");
    disp("   1. f(x,y) = 7x^2+x+3y");
    fprintf("   całka powinna być równa 2 1/3, a jest równa: %f\n", doubleIntSimpsonMain(@(x,y) 7*x^2+x+3*y ,1,1));
    fprintf("   błąd: %d\n",  abs(2+1/3-doubleIntSimpsonMain(@(x,y) 7*x^2+x+3*y,1,1)));
    disp("   2. f(x,y) = 19y^2+3");
    fprintf("   całka powinna być równa 12 1/3, a jest równa: %f\n",doubleIntSimpsonMain(@(x,y) 19*y^2+3,1,1) );
    fprintf("   błąd: %d\n",  abs(12+1/3-doubleIntSimpsonMain(@(x,y) 19*y^2+3,1,1)));
    disp("   3. f(x,y) = 19y^2+3x^2+5y+3");
    fprintf("   całka powinna być równa 13 1/3, a jest równa: %f\n",doubleIntSimpsonMain(@(x,y) 19*y^2+3*x^2+5*y+3,1,1) );
    fprintf("   błąd: %d\n",  abs(13+1/3-doubleIntSimpsonMain(@(x,y) 19*y^2+3*x^2+5*y+3,1,1)));
  
    disp("Test wielomianów stopnia 3:");
    disp("   1. f(x,y) = 2*x^3-6*y^3+7*x^2+x+3*y");
    fprintf("   całka powinna być równa 2 1/3, a jest równa: %f\n" ,doubleIntSimpsonMain(@(x,y) 2*x^3-2*y^3+7*x^2+x+3*y ,1,1));
    fprintf("   błąd: %d\n",  abs(2+1/3-doubleIntSimpsonMain(@(x,y) 2*x^3-2*y^3+7*x^2+x+3*y,1,1)));
    disp("   2. f(x,y) = -7*x^3-19*y^2+3");
    fprintf("   całka powinna być równa -1/3, a jest równa: %f\n",doubleIntSimpsonMain(@(x,y) -7*x^3-19*y^2+3,1,1) );
    fprintf("   błąd: %d\n",  abs(-1/3-doubleIntSimpsonMain(@(x,y) -7*x^3-19*y^2+3,1,1)));
    disp("   3. f(x,y) = 2*y^3+19*y^2+3*x^2+5*y+3");
    fprintf("   całka powinna być równa 13 1/3, a jest równa: %f\n",doubleIntSimpsonMain(@(x,y) 2*y^3+19*y^2+3*x^2+5*y+3,1,1) );
    fprintf("   błąd: %d\n",  abs(13+1/3-doubleIntSimpsonMain(@(x,y) 2*y^3+19*y^2+3*x^2+5*y+3,1,1)));
    disp("   4. f(x,y) = 2*y^3+2*x+3");
    fprintf("   całka powinna być równa 6 2/3, a jest równa: %f\n",doubleIntSimpsonMain(@(x,y) 2*y^3+2*x^2+3,1,1) );
    fprintf("   błąd: %d\n",  abs(6+2/3-doubleIntSimpsonMain(@(x,y) 2*y^3+2*x^2+3,1,1)));
end