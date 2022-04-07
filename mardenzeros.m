function ZERO_FLAG = mardenzeros(mardenArray)
    % MARDENZEROS  Funckja sprawdzająca wiersz tablicy Mardena pod kątem
    % wiersza zer i niezer
    %
    % mardenArray  Wiersz tablicy mardenArray do sprawdzenia
    %
    % ZERO_FLAG  flaga mówiąca o wyniku obliczeń 1 - oznacza wiersz samych
    % zer 2 - oznacza zera i niezera 3 - wiersz bez zer

    zero_found = 0;
    checksum = 0;
    ZERO_FLAG = 3;

    for el = mardenArray

        if el == 0
            zero_found = 1;
        end

        checksum = checksum + el;
    end

    if zero_found && ~checksum
        ZERO_FLAG = 1;
        return;
    end

    if zero_found && checksum && mardenArray(1) == 0
        ZERO_FLAG = 2;
        return;
    end

end
