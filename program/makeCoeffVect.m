function V = makeCoeffVect(n)
% Autor Przemysław Kacprzak 313269
%
% Funkcja oblicza odpowiedni wektor współczynników potrzebnych do
% oblicznenia kwadratury.
% WEJŚCIE:
%      n - liczba podprzedziałów przy całkowaniu po zmiennej y
% WYJŚCIE:
%      V - wyznaczony wektor

    V = ones(1,2*n+1);
    V(1,1) = 1;
    V(1,2*n+1) = 1;
    V(1,2:2:2*n) = 4;
    V(1,3:2:2*n-1) = 2;
end

