function A = mardennumeric(A, zero)
% MARDENNUMERIC - Funkcja sprowadzająca zera numeryczne do rzeczywistych
%
% Syntax: A = mardennumeric(A, zero)
%
% A  macierz współczynników stojących przy kolejnych z
% zero  wartość poniżej której wartości traktowane są jak zero
%
% Liczby numerycznie bliskie zera traktuje jak zero, podana wartość jest wartością od której należy liczbę uznać za zero

    for i = 1:(length(A) - 1)
        if abs(A(i)) < zero
            A(i) = 0;
        end
    end

end
