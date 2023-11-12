# Regresia-Liniara-Pentru-Aproximarea-Functiilor

Această secvență de script MATLAB efectuează regresie polinomială pe un set de date folosind
metoda celor mai mici pătrate. Datele sunt încărcate dintr-un fișier MAT, iar atât seturile 
de antrenare (id), cât și cele de validare (val) sunt utilizate. Scriptul determină gradul
polinomului optim prin evaluarea Erorii Medie pătratica (MSE) atât pe setul de antrenare, cât și
pe cel de validare, pentru gradele cuprinse între 1 și 28.

Etape Cheie:

Încărcarea Datelor:

Se încarcă datele din fișierul 'lab2_05.mat'.
Se extrag variabilele id.X, id.Y, val.X, și val.Y.

Plotarea Datelor:

Se realizează un grafic pentru seturile de antrenare (id) și de validare (val).

Regresie Polinomială și Calculul MSE:

Se iterează prin gradele polinomului de la 1 la 28.
Pentru fiecare grad, se efectuează regresie polinomială pe setul de antrenare.
Se evaluează modelul atât pe setul de antrenare, cât și pe cel de validare.
Se calculează Eroarea Medie pătratica (MSE) pentru fiecare grad.

Plotarea Rezultatelor:

Se realizează grafice ale valorilor MSE pentru seturile de antrenare și de validare în funcție de gradele polinomului.

Găsirea Gradului Optim:

Se identifică gradul care minimizează MSE pe setul de validare.

Plot Adițional (Opțional):

Dacă gradul optim este 22, se realizează un grafic cu setul de validare alături de polinomul 
potrivit.

Rezultate:
Se afișează valoarea minimă a MSE pe setul de validare și gradul optim corespunzător.

