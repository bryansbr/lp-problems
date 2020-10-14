% Variables: (X, Y) <- Productos; (F) <- Función objetivo
var float: x1;
var float: x2;
var float: x3;
var float: x4;
var float: x5;
var float: F;

% Restricciones
constraint 0.08*x1 + 0.25*x3 + 0.12*x4 + 0.08*x5 >= 550;
constraint 0.01*x1 + 0.9*x2 + 0.36*x3 + 0.03*x4 >= 600;
constraint 0.55*x1 + 0.75*x4 + 0.5*x5 >= 2000;
constraint x1 >= 0;
constraint x2 >= 0;
constraint x3 >= 0;
constraint x4 >= 0;
constraint x5 >= 0;
constraint F = 0.0025*x1 + 0.005*x2 + 0.012*x3 + 0.006*x4 + 0.015*x5;

% Solución
solve minimize F;

% Salida (Ejecutar con COIN-BC)
output ["x1 = ", show(x1), "\nx2 = ", show(x2), "\nx3 = ", show(x3), "\nx4 = ", show(x4), "\nx5 = ", show(x5),"\nFunción objetivo = ", show(F)];
