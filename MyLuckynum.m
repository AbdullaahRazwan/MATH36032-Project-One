function n = MyLuckynum(N)
%The function MyLuckynum finds the samllest Mylucky number that is greater
%than or equal to N. It uses the isMyLucynum function as an integral 
%component. 

while ~isMyLuckynum(N)
    N = N+1; %if input is not MyLucky change it to N+1 until it is
end
if isMyLuckynum(N)
    n = N; %if/when N is MyLucky output n = N
end



            



        
       





