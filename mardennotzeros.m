function B = mardennotzeros(A)
    % MARDENRNOTZEROS  Funckja pomocnicza do tworzenia nowego wielomianu w
    % przypadku szeregu zer i niezer
    %
    % A  macierz współczynników stojących przy kolejnych z
    % B  nowy wielomian z macierzy A

    syms z; % symboliczne z

    % Wyznaczanie q
    for i = 2:(length(A) - 1)

        if ~(abs(A(i)) == abs(A(length(A) - (i - 1))))
            q = i - 1;
            break;
        end

    end

    A = mardenreverse(A);

    phi = (A(q + 1) - A(length(A) - q) * A(1) / A(length(A))) / A(1);

    % Obliczanie wilomianu B(z)
    Bz = poly2sym(A, z) * (z^q + 2 * (phi / abs(phi)));
    % Zapisanie współczynników B(z) do obliczeń
    Bz_coeffs = sym2poly(expand(Bz));

    % Analogicznie jak wyżej
    Az = Bz_coeffs(length(Bz_coeffs)) * Bz - Bz_coeffs(1) * poly2sym(mardenreverse(Bz_coeffs), z);
    Az_coeffs = sym2poly(expand(Az));

    if abs(Az_coeffs(length(Az_coeffs))) < abs(Az_coeffs(1))
        B = Az_coeffs;
        disp('---RZĄD ZER I NIEZER---')
        return;
    else
        B = [];
        disp('---BRAK ROZWIĄZAŃ---')
        return;
    end

end

% UWAGA - we wsztstkich wzorach (albo w większości) numeracja jest odwrotna niż w tym kodzie np. a0 znajduje się na końcu
% jakieś macierzy podczas gdy we wzorze występuje na końcu, nie spojrzałem na to i robiłem tak jak normalnie bym pisał ze
% współczynnikami od 0 przy najwyższej potędzie do n przy wyrazie wolnym.
