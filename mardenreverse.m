function B = mardenreverse(A)
    % MARDENREVERSE  Funckja pomocnicza do odwracania
    %
    % A  macierz współczynników stojących przy kolejnych z
    % B  macierz A w odwrotnej kolejności

    B = []; % Zmienna pomocnicza do odwracania

    for i = length(A):-1:1
        B = [B, A(i)];
    end

end
