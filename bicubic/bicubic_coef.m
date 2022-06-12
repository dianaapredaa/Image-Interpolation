# Copyright 2021 - 2022 Preda Diana 314CA

function A = bicubic_coef(f, Ix, Iy, Ixy, x1, y1, x2, y2)
    % =========================================================================
    % Calculeaz? coeficien?ii de Interpolare Bicubic? pentru 4 puncte al?turate
    % =========================================================================

    % TODO: Calculeaz? matricile intermediare.
    I1 = [1 0 0 0; 0 0 1 0; -3 3 -2 -1; 2 -2 1 1];
    
    f11 = f(y1,x1);
    f12 = f(y2,x1);
    f21 = f(y1,x2);
    f22 = f(y2,x2);
    
    fy13 = Iy(y1,x1);
    fy14 = Iy(y2,x1);
    fy23 = Iy(y1,x2);
    fy24 = Iy(y2,x2);
    
    fx31 = Ix(y1,x1);
    fx32 = Ix(y2,x1);
    fx41 = Ix(y1,x2);
    fx42 = Ix(y2,x2);
    
    fxy33 = Ixy(y1,x1);
    fxy34 = Ixy(y2,x1);
    fxy43 = Ixy(y1,x2);
    fxy44 = Ixy(y2,x2);
    
    I2 = [f11 f12 fy13 fy14; f21 f22 fy23 fy24; fx31 fx32 fxy33 fxy34; fx41 fx42 fxy43 fxy44];
    
    I3 = [1 0 -3 2; 0 0 3 -2; 0 1 -2 1; 0 0 -1 1];

    % TODO: Converte?te matricile intermediare la double.
    
    I1 = double(I1);
    I2 = double(I2);
    I3 = double(I3);

    % TODO: Calculeaz? matricea final?.

    A = I1 * I2 * I3;
endfunction