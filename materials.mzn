% Variables: (x1, x2, x3, x4, x5); (F) <- Función objetivo
var float: x1;
var float: x2;
var float: x3;
var float: x4;
var float: x5;
var float: F;

% Restricciones
constraint 0.1*x1 + 0.15*x2 + 0.2*x3 + 0.3*x4 + 0.4*x5 = 250;
%constraint 0.9*x1 + 0.85*x2 + 0.8*x3 + 0.7*x4 + 0.6*x5 = 750; Restricción redudante.
constraint x1 + x2 + x3 + x4 + x5 = 1000;
constraint x1 >= 0;
constraint x2 >= 0;
constraint x3 >= 0;
constraint x4 >= 0;
constraint x5 >= 0;
constraint x1 <= 300;
constraint x2 <= 400;
constraint x3 <= 200;
constraint x4 <= 700;
constraint x5 <= 450;
constraint F = 6*x1 + 10*x2 + 18*x3 + 24*x4 + 30*x5;

% Solución
solve minimize F;

% Salida (Ejecutar con COIN-BC)
output ["x1 = ", show(x1), "\nx2 = ", show(x2), "\nx3 = ", show(x3), "\nx4 = ", show(x4), "\nx5 = ", show(x5),"\nFunción objetivo = ", show(F)];