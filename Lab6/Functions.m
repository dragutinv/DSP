%causal derivative
function yp = derivP(x,s)
    N = length(x);
    T = 1;
    l = s*T; %alpha
    a = exp(-l);
    yn = 0;
    yn(1:2) = 0;
    for k=3:N
        yp(k) = -l*s*a*x(k-1)+2*a*yp(k-1)-a^2*yp(k-2);
    end
end
        
%anti-causal derivative
function yn = derivN(x,s)
    N = length(x);
    T = 1;
    l = s*T; %alpha
    a = exp(-l);
    yn = 0;
    yn(N-1:N) = 0;
    for k=N-2:-1:1
        yn(k) = l*s*a*x(k+1) + 2*a*yn(k+1)-a^2*yn(k+2);
    end
end
