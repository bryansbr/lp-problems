% Variables:
var float: x1;
var float: x2;
var float: F;

% Restricciones (multiplicar por 1M el resultado):
constraint 0.4*x1 + 0.3*x2 >= 8;
constraint 0.2*x1 + 0.45*x2 >= 6;
constraint 0.3*x1 + 0.1*x2 >= 7;
constraint 0.1*x1 + 0.05*x2 >= 3;

% No negatividad:
constraint x1 >= 0;
constraint x2 >= 0;

% Función objetivo:
constraint F = 40*x1 + 30*x2;

% Solución:
solve minimize F;

output["x1 = ", show(x1), "\nx2 = ", show(x2), "\nFunción objetivo: ", show(F)];