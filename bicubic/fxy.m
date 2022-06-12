# Copyright 2021 - 2022 Preda Diana 314CA

function r = fxy(f, x, y)
    % =========================================================================
    % Aproximeaza derivata fata de x si y a lui f in punctul (x, y).
    % =========================================================================
    
    % TODO: Calculeaza derivata.
    
    r = (f(x - 1, y - 1) + f(x + 1, y + 1) - f(x + 1, y - 1) - f(x - 1,y + 1)) / 4;
    
endfunction