function test02_wybrane_wielomiany()
% Autor Przemysław Kacprzak 313269
%
% Funkcja sprawdza błędy przy liczeniu całek 3 przykładowych funkcji.
% Podaje je dla 2 różnych ilości przedziałów na które podzielone są
% przedziały całkowania: 100 i 2000.
    f1 = @(x,y) (x^8)*(y^2) - x*sin(pi*x) + 7*(y^3) + 3;
    i1 = (-23760 + 8911*pi^3)/(1485*pi^3);
    v1a = doubleIntSimpsonMain(f1,100,100);
    v1b = doubleIntSimpsonMain(f1,2000,2000);
    
    disp("1. f(x,y) = (x^8)*(y^2) - x*sin(pi*x) + 7*(y^3) + 3")
    fprintf("    Poprawny wynik to: (-23760 + 8911*pi^3)/(1485*pi^3)~=%f\n", i1);
    fprintf("    Wynik obliczeń to: %f dla 100 podprzedziałów i %f dla 2000\n", v1a, v1b);
    fprintf("    Błąd obliczeń to: %e dla 100 podprzedziałów i %e dla 2000\n", i1-v1a , i1-v1b);
    
    f2 = @(x,y) 5*(y^2)*x^8 - 2*y*x + 50 + sin(x);
    i2 = 29701/297;
    v2a = doubleIntSimpsonMain(f2,100,100);
    v2b = doubleIntSimpsonMain(f2,2000,2000);
    
    disp("2. f(x,y) = 5*(y^2)*x^8 - 2*y*x + 50 + sin(x)")
    fprintf("    Poprawny wynik to: 29701/297~=%f\n", i2);
    fprintf("    Wynik obliczeń to: %f dla 100 podprzedziałów i %f dla 2000\n", v2a, v2b);
    fprintf("    Błąd obliczeń to: %e dla 100 podprzedziałów i %e dla 2000\n", i2-v2a , i2-v2b);   
    
    f3 = @(x,y) 25.683*x^16 + 42.534*y^10 + 23*x^9 + 6243*y^6 + 17;
    i3 = 47276486/98175;
    v3a = doubleIntSimpsonMain(f3,100,100);
    v3b = doubleIntSimpsonMain(f3,2000,2000);

    disp("3. f(x,y) = 25.683*x^16 + 42.534*y^10 + 23*x^9 + 6243*y^6 + 17");
    fprintf("    Poprawny wynik to: 47276486/98175~=%f\n", i3);
    fprintf("    Wynik obliczeń to: %f dla 100 podprzedziałów i %f dla 2000\n", v3a, v3b);
    fprintf("    Błąd obliczeń to: %e dla 100 podprzedziałów i %e dla 2000\n", i3-v3a , i3-v3b); 
    
    f4 = @(x,y) -123.563*y^14 + 62.236*y^10 + 52.532*x^12 + 642*y^6 + x;
    i4 = 401872171/8580000;
    v4a = doubleIntSimpsonMain(f4,100,100);
    v4b = doubleIntSimpsonMain(f4,2000,2000);

    disp("4. f(x,y) = -123.563*y^14 + 62.236*y^10 + 52.532*x^12 + 642*y^6 + x")
    fprintf("    Poprawny wynik to: 401872171/8580000~=%f\n", i4);
    fprintf("    Wynik obliczeń to: %f dla 100 podprzedziałów i %f dla 2000\n", v4a, v4b);
    fprintf("    Błąd obliczeń to: %e dla 100 podprzedziałów i %e dla 2000\n", i4-v4a , i4-v4b);    
end