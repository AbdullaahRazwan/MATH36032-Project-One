function y = isMyLuckynum(x)
%isMyLuckynum tests if a number is MyLucky and returns true if it is and 
%false if it is not

f = factor(x);

if length(f) > 1 & length(f) == length(unique(f))
    for i = 1:length(f)
        if mod(f(i),2) ~= 1 | mod(x-1, f(i)-1) ~= 0;; 
            y = false; %if a factor is even or (factor-1) does not divide
            break      %(n-1) then set y = false and break out of loop
        else
            y = true; %if the conditions are met, set equal to true
        end
    end
else
    y = false; %if the conditions aren't met set equal to false
end

end


