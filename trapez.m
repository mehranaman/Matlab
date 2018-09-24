function trapez(a, b, n)

%trapez(a, b, n) approximates the integral of a function f(x) in the 
%interval [a;b], by the composite trapezoidal rule
%n is the number of subintervals
%the user needs to specify the function f(x) at the bottom

%Author: Alain G. Kapitho
%Date  : Jan 2006

h = (b-a)/n;

sum = 0;
x = -10:1:10

for i = 1:n-1
   x(i) = a + i*h;
   sum = sum + f(x(i));
end

integral = h*(f(a) + 2*sum + f(b))/2

%this needs to be changed accordingly with the specific problem you have at
%hand, before proceeding to the command line

%y = 2 + sin(2*sqrt(x));

y = (exp(-(x^2)/2))/(sqrt(2*pi))
function y = f(x)


