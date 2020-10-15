% Variables:
var float: x1;
var float: x2;
var float: x3;
var float: F;

% Restricciones.
constraint x1 + x2 + x3 <= 200;
constraint 6*x1 + 7*x2 + 5*x3 <= 500;

% No negatividad:
constraint x1 >= 0;
constraint x2 >= 0;
constraint x3 >= 0;

% Función objetivo:
constraint F = 450*x1 + 360*x2 + 400*x3;

% Solución:
solve maximize F;

output["x1 = ", show(x1), "\nx2 = ", show(x2), "\nx3 = ", show(x2), "\nFunción objetivo: ", show(F)];