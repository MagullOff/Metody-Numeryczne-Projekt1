function S = doubleIntSimpsonMain(f,xm,ym)
% Autor Przemysław Kacprzak 313269
%
% Funkcja przybliża wartość całki podwójnej funkcji dwóch zmiennych na
% obszarze D = {(x,y) ∈ R^2 : |x|+|y|<=1} przez transformację na kwadrat
% [-1,1]x[-1,1] i zastosowanie złożonych kwadratur Simpsona ze względu na
% każdą zmienną.
% WEJŚCIE:
%       f - uchwyt do rozpatrywanej funkcji
%      xm - liczba podprzedziałów przy całkowaniu po zmiennej x
%      ym - liczba podprzedziałów przy całkowaniu po zmiennej y
% WYJŚCIE:
%       S - wyznaczone przybliżenie całki

S=0;
x_lin = linspace(-1,1,2*xm+1);
y_lin = linspace(-1,1,2*ym+1);
Hx = 2/xm;
Hy = 2/ym;
Jdet = 0.5;
u = @(x,y) (x+y)/2;
v = @(x,y) (y-x)/2;
Func = @(x,y) f(u(x,y),v(x,y))*Jdet;

A_arr = makeCoeffVect(xm);
B_arr = makeCoeffVect(ym);

for i=1:2*xm+1 
    for j=1:2*ym+1
        S=S+((Hx*Hy)/36)*A_arr(i) * B_arr(j)*Func(x_lin(i), y_lin(j));
    end
end

end