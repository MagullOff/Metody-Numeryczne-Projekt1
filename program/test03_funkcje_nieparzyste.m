function test03_funkcje_nieparzyste()
% Autor Przemysław Kacprzak 313269
%
% Funkcja wyznacza 5 losowych wielomianów (1,3,5,7 i 9 stopnia) dla których
% wynikiem operacji całkowania na podanym w poleceniu przedziale będzie 0.
% Następnie sprawdza ona wynik działania funkcji na tych funkcjach i
% wyświela błędy.

a=-1000 + (1000+1000)*rand();
b=-1000 + (1000+1000)*rand();
c=-1000 + (1000+1000)*rand();
d=-1000 + (1000+1000)*rand();
e=-1000 + (1000+1000)*rand();
f=-1000 + (1000+1000)*rand();
g=-1000 + (1000+1000)*rand();
h=-1000 + (1000+1000)*rand();
i=-1000 + (1000+1000)*rand();
j=-1000 + (1000+1000)*rand();


func5 = @(x,y) a*x+b*x^3+c*x^5+d*x^7+i*x^9+e*y+f*y^3+g*y^5+h*y^7+j*y^9;
func4 = @(x,y) a*x+b*x^3+c*x^5+d*x^7+e*y+f*y^3+g*y^5+h*x^7;
func3 = @(x,y) a*x+b*x^3+c*x^5+e*y+f*y^3+g*y^5;
func2 = @(x,y) a*x+b*x^3+e*y+f*y^3;
func1 = @(x,y) a*x+e*y;


err1=abs(doubleIntSimpsonMain(func1,1000,1000));
err2=abs(doubleIntSimpsonMain(func2,1000,1000));
err3=abs(doubleIntSimpsonMain(func3,1000,1000));
err4=abs(doubleIntSimpsonMain(func4,1000,1000));
err5=abs(doubleIntSimpsonMain(func5,1000,1000));

fprintf("błąd dla wielomianu: (%f)x+(%f)y\n",a,e);
disp(err1);
fprintf("błąd dla wielomianu: (%f)x+(%f)x^3+(%f)y+(%f)y^3\n",a,b,e,f);
disp(err2);
fprintf("błąd dla wielomianu: (%f)x+(%f)x^3+(%f)x^5+(%f)y+(%f)y^3+(%f)y^5\n",a,b,c,e,f,g);
disp(err3);
fprintf("błąd dla wielomianu: (%f)x+(%f)x^3+(%f)x^5+(%f)x^7+(%f)y+(%f)y^3+(%f)y^5+(%f)y^7\n",a,b,c,d,e,f,g,e);
disp(err4);
fprintf("błąd dla wielomianu: (%f)x+(%f)x^3+(%f)x^5+(%f)x^7+(%f)x^9+(%f)y+(%f)y^3+(%f)y^5+(%f)y^7+(%f)y^9\n",a,b,c,d,i,e,f,g,e,j);
disp(err5);
end

