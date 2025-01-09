--[[    Дано вещественное число A > 1. Вывести наибольшее
из целых чисел N, для которых сумма 1 + 1/2 + ... +
1/N будет меньше A, и саму эту сумму.  ]]
-----------------------------------------------------
function Read_number(read)
    Number = nil
    repeat
         io.write(read)
        Number = tonumber( io.read())	
    
    until type(Number) == "number" and Number%1 == 0 and Number>1
    return Number
    end
    --------------
    function Logik(A)
        counter = 0
        n = 0
        while n<A do
            counter = counter+1
            n = n + 1/counter  
        end         
        return (counter-1), (n-1/counter)
    end
    --------------
    do
    A = Read_number("Enter an integer greater than 1 : ")
    
    N,summa = Logik(A)
    print (A.." Your number - N = "..N.." Summa = "..summa)
    
    end