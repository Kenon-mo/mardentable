function mardentable(A)
    % MARDENTABLE(A)  Wyświetla tablicę Mardena dla podanego wielomianu
    %
    % A  macierz współczynników stojących przy kolejnych z - wpisuje się
    % zaczynając od wyrazu wolnego

    i = 1; % Indeksowanie innych zmiennych
    n = 1; % Numeracja tylko do wyświetlania
    char = 'M'; % Nazwa w tabeli
    mardenArray{10} = {}; % Prealokacja (warn)

    while 1
        mardendisp(A, n, char);

        mardenArray{i} = A;
        mardenArray{i + 1} = mardenreverse(A);

        % Obliczanie kolejnej macierzy
        A = mardencalc(mardenArray, i);
        
        % Jeśli w macierzy jest coś poniżej ustalonego numerycznego zera to
        % wstaw tam zero
        A = mardennumeric(A, 1e-9);
        %disp(A)

        % Warunki sprawdzające przypadki szczególne
        if mardenzeros(A) == 1
            n = n + 1;
            mardendisp(A, n, char);
            n = 1;

            A = mardendiff(mardenArray{i});
            char = char + 1;
        end

        if mardenzeros(A) == 2
            n = n + 1;
            mardendisp(A, n, char);
            n = 1;

            A = mardennotzeros(mardenArray{i});
            % Chyba powinno wyjść odwrócone ale nie ręczę XD
            A = mardenreverse(A);
            char = char + 1;
        end

        % Warunek końca pętli - w tabeli został 1 element lub mniej
        if ~(length(mardenArray{i + 1}) > 1)
            break;
        end

        i = i + 1;
        n = n + 1;
    end

end
