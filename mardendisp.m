function mardendisp(A, i, argch)
    % MARDENDISP(A, i)  Funckja pomocnicza do wyświetlania
    % MARDENDISP(A, i, char)
    %
    % A  macierz współczynników stojących przy kolejnych z
    % i  liczba porządkowa tablicy
    % char  oznaczenie wielomianu domyślnie M

    if nargin > 2
        char = argch;
    else
        char = 'M';
    end

    if i > 1
        fprintf('%c%i(z)\t | \t', char, i - 1);
    else
        fprintf('%c(z)\t | \t', char);
    end

    for el = A
        fprintf('%f \t', el);
    end

    fprintf('\n');

    if i > 1
        fprintf('%c%i*(z)\t | \t', char, i - 1);
    else
        fprintf('%c*(z)\t | \t', char);
    end

    for el = mardenreverse(A)
        fprintf('%f \t', el);
    end

    fprintf('\n ------------------------------------------------------------------------------------------------------- \n');
end
