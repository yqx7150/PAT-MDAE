
function x = split_hscg1(x,y,u,alpha,niter)
[rows, cols] = size(x);
for iter = 1:niter
    grad=double(backward2(forward2(x)-y))+alpha * (x - u);
    grad=grad(:);
    if iter ==1
        d = -grad;
    else
        d = -grad + (grad'*(grad-gradold))/(d'*(grad-gradold))*d;
    end
    gradold = grad;
    d=reshape(d,rows, cols);
    Hd = double(forward2(d));
    d=d(:);
    Hd=Hd(:);
    step = -(grad'*d)/(Hd'*Hd + d'*d*alpha); % optimal stepsize
    x = x(:);
    x = x + step * d;
    x = reshape(x,rows, cols);
end

