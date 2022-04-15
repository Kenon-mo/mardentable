function B = mardendiff(A)
    % MARDENRDIFF  Funckja pomocnicza do tworzenia pochodnej w przypadku
    % szeregu zer
    %
    % A  macierz współczynników stojących przy kolejnych z
    % B  pochodna macierzy A

    B = [];

    for i = 1:(length(A) - 1)
        B = [B, (A(i) * (length(A) - i))];
    end

    disp('---RZĄD ZER---')
    %disp(B)
end
