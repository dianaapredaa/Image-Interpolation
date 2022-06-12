# Copyright 2021 - 2022 Preda Diana 314CA

function [Ix, Iy, Ixy] = precalc_d(I)
    % =========================================================================
    % Prealculeaza matricile Ix, Iy si Ixy ce contin derivatele dx, dy, dxy ale 
    % imaginii I pentru fiecare pixel al acesteia.
    % =========================================================================
    
    % Obtinem dimensiunea imaginii.
    [m n nr_colors] = size(I);
    [m n nr_colors] = size(I);
    
    % facem cast matricii I in double
    I = double(I);
    % TODO: Calculeaza matricea cu derivate fata de x Ix.
    Ix = zeros(m,n);
    
    % TODO: Calculeaza matricea cu derivate fata de y Iy.
    Iy = zeros(m,n);    
        
    % TODO: Calculeaza matricea cu derivate fata de xy Ixy.
    Ixy = zeros(m,n);
    
    for x = 1 : m
        for y = 1 : n
          if ((y == 1) || (y == n))
            Ix(x,y) = 0;
          else
            Ix(x,y) = fx(I,x,y);
          endif
          
         if ((x == 1) || (x == m))
            Iy(x,y) = 0;
         else
            Iy(x,y) = fy(I,x,y);
         endif
          
          if(x == 1 || y == 1 || x == m || y == n)
            Ixy(x,y) = 0;
          else
            Ixy(x,y) = fxy(I,x,y);
          endif
      endfor
    endfor

    
endfunction