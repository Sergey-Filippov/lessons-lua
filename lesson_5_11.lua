--[[    Дано целое число N > 0. Вывести произведение
1·2·...·N. Чтобы избежать целочисленного переполнения,
 вычислять это произведение с
помощью вещественной переменной и выводить его
как вещественное число.  ]]
-----------------------------------------------------
function Read_number(read)
    Number = nil
    repeat
         io.write(read)
        Number = tonumber( io.read())	
    
    until type(Number) == "number" and Number%1 == 0 and Number>0
    return Number
    end
    --------------
    function Faktorial(N)
        result = result or 1
        if N<1 then return result end
        result = result * N
        
         return Faktorial(N-1)
    end
    --------------
    do
        N = Read_number("Enter an integer greater than 0 : ")
        Fakt = Faktorial(N)
        print (tostring(Fakt))
    end