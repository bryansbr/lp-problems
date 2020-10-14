% Use this editor as a MiniZinc scratch book
var 0.0..1.0: x;
constraint x <= 1;
constraint x > 0;

solve minimize x;

output ["x=", show(x)]