function s = traprl(f,a,b,m)

h  = (b - a)/m;
s = 0;
for k=1:(m-1),
  x = a + h*k;
  s = s + feval(f,x);
end
s = h*(feval(f,a)+feval(f,b))/2 + h*s;