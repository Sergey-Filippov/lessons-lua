--[[    Дано вещественное число A > 1. Вывести наименьшее
из целых чисел N, для которых сумма 1 + 1/2 + ... +
1/N будет больше A, и саму эту сумму.  ]]
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
        repeat
         counter = counter+1
         n = n + 1/counter
        until n > A
         return counter, n
    end
    --------------
    do
    A = Read_number("Enter an integer greater than 1 : ")
    
    N,summa = Logik(A)
    print (A.." Your number - N = "..N.." Summa = "..summa)
    
    end