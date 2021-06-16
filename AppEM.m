function [p, q] = AppEM(N)
%The function AppEM will find the best approximation of the Eurler-
%Mascheroni constant by a rational number p/q, with p,q natuaral numbers 
%and p + q <= N such that abs(p/q - emconst) is smallest among all positive
%integers

emconst = 0.577215664901533;

absdiff = 100000000000000; %initialise with high value
p = 1; q = 1; %initialise

for p1=1:N
    for q1=1:N
        app = p1/q1;
        appdiff = abs(emconst - app); 
        if appdiff < absdiff & p1 + q1 <= N 
            absdiff = appdiff; %if the new approximation is closer to 
            p = p1;            %emconst than the current one and satisfies
            q = q1;            % the "p+q<=N condition" then change acc to  
                               %appaccp to p1 and q to q1
        elseif appdiff == absdiff & p1 + q1 < p + q & p1 + q1 <= N
                p = p1; %if the new approximation is equal to the current  
                q = q1; %one but the new value of "p+q" is less than the 
                        %old one then change p to p1 and q to q1
            end
        end
    end
end