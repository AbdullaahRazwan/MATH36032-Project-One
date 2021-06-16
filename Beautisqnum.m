function n = Beautisqnum(N)
%The function Beautisqnum returns output n, such that n^2 is a perfect 
%square and all nine digits of n^2 are distinct, which is closest to the
%input N

diff = 100000000000; %initialise with high value

for i = 11112:31426 % = ceil(sqrt(123456789)):floor(sqrt(987654321))
    i2 = i^2;
    dig = num2dig(i2); %create array of digits of i^2
    if length(dig)==length(unique(dig)) & max(dig)==9 & min(dig)==1
    %conditions to check if digits of i^2 are unique and between 1 and 9
        calc = abs(N - i2); %calculate absolute difference between input 
                            %and current i^2
        if calc <= diff;  %if above calculation is less than current 
            diff = calc;  %current difference, then replace diff with calc
            n = i;        %and n with i
        end
    else
        continue %if conditions are not met continue with for loop
    end
end
end

            
        