# Copyright 2021 - 2022 Preda Diana 314CA

function r = fy(f, x, y)
    % =========================================================================
    % Aproximeaza derivata fata de y a lui f in punctul (x, y).
    % =========================================================================
    
    % TODO: Calculeaza derivata.
     r = (f(x + 1, y) - f(x - 1, y)) / 2;
endfunction