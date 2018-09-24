function [x,y] = Bisection(f,a,b,tol)
fa = f(a); v=1; if fa>0, v=-1; end
if fa*f(b)>0
    error('f(a) and f(b) have the same sign')
end
if (nargin<4), tol=0 
end
    
x = (a+b)/2;
while (b-a>tol) && ((a<x) && (x<b))
    if v*f(x)>0, b=x; else a = x; end;
x = (a+b)/2;
end
if nargout == 2, y=f(x); end;
