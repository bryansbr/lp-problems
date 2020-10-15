% Use this editor as a MiniZinc scratch book

% Variables: (X, Y) <- Productos; (F) <- Función objetivo
var float: X;
var float: Y;
var float: F;

% Restricciones
constraint 15*X + 20*Y >= 60;
constraint 10*X + 5*Y >= 30;
constraint F = 80*X + 50*Y;
constraint X >= 0;
constraint Y >= 0;

% Solución
solve minimize F;

% Salida (Ejecutar con COIN-BC)
output ["X = ", show(X), "\nY = ", show(Y), "\nF = ", show(F)];

% Se debe utilizar 2.4 de 'X' y 1.2 de 'Y' para minimizar el costo de la producción
% de alimento. Con esto se obtiene un costo mínimo de $252 pesos.

