function dig = num2dig(x)
%When given a number x num2dig outputs a vector of digits of x
%It is the same code as num2dig from labdemo5.1

%dig = rem(n,10);
%n = floor(n/10);
dig = [];
while (x>0)
    dig = [rem(x,10) dig];
    x = floor(x/10);
end
end

