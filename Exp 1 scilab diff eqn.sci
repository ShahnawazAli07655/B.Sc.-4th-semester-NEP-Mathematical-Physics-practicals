function dydx1 = f1(x, y)
    dydx1 = exp(x)
endfunction
x1 = [0:0.1:10]
y1 = ode(0, 0, x1, f1)
disp("Values of y1 are:",y1," ")
function dydx2 = f2(x, y)
    dydx2 = x^2 - exp(-x)*y
endfunction
x2 = [0:0.1:10]
y2 = ode(0, 0, x2, f2);
disp("Values of y2 are:",y2," ")
function dydx3 = f3(x, y)
    dydx3 = [y(2); -2*y(2) - y(1)]
endfunction
x3 = [0:0.1:10]
y03 = [0; 1]
y3 = ode(y03, 0, x3, f3)
disp("Values of y3 are:",y3," ")
function dydx4 = f4(x, y)
    dydx4 = [y(2); -exp(-x)*y(2) - y(1)]
endfunction
x4 = [0:0.1:10]
y04 = [0; 1]; 
y4 = ode(y04, 0, x4, f4)
disp("Values of y4 are:",y4," ")
subplot(2,2,1)
plot(x1, y1)
subplot(2,2,2)
plot(x2, y2)
subplot(2,2,3)
plot(x3, y3(1, :))
subplot(2,2,4)
plot(x4, y4(1, :))
