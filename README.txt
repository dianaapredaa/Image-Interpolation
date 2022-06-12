# Copyright 2021 - 2022 Preda Diana 314CA

Nume: Preda Diana
Grupa: 314CA

Tema 2:
tema consta in realizarea de transformari geometrice asupra imaginilor in vederea
efectuarii operatiilor de resize si rotate folosindu-ne de interpolare

Bicubic
am implementat functiile:
precalc_d
	- am dat cast in double lui I
	- am initializat matricele cu 0
	- am calculat cele 3 matrice, cu derivatele in x, in y si in xy
bicubic_coef
	- am calculat matricile intermediare folosind formula din cerinta, le-am notat cu
	I1, I2 si I3
	- am calculat matricea A, finala, inmultind cele 3 matrice
bicubic_resize
	- am dat cast in double lui I
	- am calculat factorii scalari s_x si s_y
	- am calculat matricea de transformare pentru redimensionare
	- am calculat inversa matricei T
	- am precalculat derivatele cu ajutorului lui precalc_d
	- am aplica transformarea inversa asupra (x, y) si calculeaza x_p si y_p
	- am incrementat cu 1 x_p si y_p pentru a aplica interpolarea
	- am calculat cele 4 puncte care inconjoara x si y folosind surrounding_points
	- am calculat coeficientii de interpolare
	- am trecut coordonatele xp si yp in patratul unitate scazand un 1
	- am calculat valoarea interpolata a pixelului (x,y) folosindu-ma de formula data
	- am dat cast in uint8
bicubic_resize_RGB
	- am extras culorile rosu, verde si respectiv albastru al imaginii
	- am aplicat functia anterioara pe cele 3 culori

Proximal
am implementat functiile:
proximal_2x2
	- am definit coordoanrele punctelor intermediare
	- am calculat numarul de puncte
	- am initializat matricea rezultat
	- am aflat cel mai apropiat pixel de cel initial
	- am calculat pixelul final
proximal_2x2_RGB
	- am extras culorile rosu, verde si respectiv albastru al imaginii
	- am aplicat functia anterioara pe cele 3 culori
proximal_coef
	- am calculat coeficientii pentru functia folosita in cadrul rotatiei unei imagini
proximal_resize
	- am initializat matricea finala
	- am dat cast in double lui I
	- am calculat factorii scalari s_x si s_y
	- am calculat matricea de transformare pentru redimensionare
	- am calculat inversa matricei T
	- am aplica transformarea inversa asupra (x, y) si calculeaza x_p si y_p
	- am incrementat cu 1 x_p si y_p pentru a aplica interpolarea
	- am calculat cel mai apropiat pixel
	- am calculat valoarea pixelului pixelului final
	- am dat cast in uint8
proximal_resize_RGB
	- am extras culorile rosu, verde si respectiv albastru al imaginii
	- am aplicat functia anterioara pe cele 3 culori
proximal_rotate
	- am dat cast in double lui I
	- am calculat cos si sin de rotatie
	- am initializat matricea finala
	- am calculat inversa matricei T
	- am aplica transformarea inversa asupra (x, y) si calculeaza x_p si y_p
	- am incrementat cu 1 x_p si y_p pentru a aplica interpolarea
	- verificam daca xp si yp se afla in interiorul imaginii
	- ne asiguram ca x2 si y2 sa nu iasa din imagine
	- am calculat coeficientii de interpolare
	- am calculat valoarea interpolata a pixelului
	- am dat cast in uint8
proximal_rotate_RGB
	- am extras culorile rosu, verde si respectiv albastru al imaginii
	- am aplicat functia anterioara pe cele 3 culori

