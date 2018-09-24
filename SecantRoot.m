function Xs = SecantRoot(Fun, Xa, Xb, Err, imax)
for i = 1:imax
    FunXb = feval(Fun, Xb);
    Xi = Xb - FunXb*(Xa-Xb)/ (feval(Fun,Xa)-FunXb);
    if abs((Xi-Xb)/Xb) < Err
        Xs = Xi;
        break
    end
    Xa = Xb;
    Xb = Xi;
end
if i == imax
    fprintf('Solution was not obtained in %i iterations.\n', imax)
    Xs = ('No answer');
end
