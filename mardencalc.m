function A = mardencalc(mardenArray, i)
    % MARDENCALC  Funckja obliczająca kolejny wiersz tablicy Mardena
    %
    % mardenArray  Wszytskie poprzednie wiersze tablicy
    % i  numer bieżącego wiersza
    %
    % A  wiersz wynikowy

    A = [];

    for j = 1:(length(mardenArray{i}) - 1)
        A = [A, (mardenArray{i}(1) * mardenArray{i + 1}(length(mardenArray{i}) - (j - 1)) - mardenArray{i + 1}(1) * mardenArray{i}(length(mardenArray{i}) - (j - 1)))];
    end

end
