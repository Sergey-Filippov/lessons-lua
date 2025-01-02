--[[ Дано целое число N > 1. Вывести наименьшее целое
     K, при котором выполняется неравенство 3K > N, и
     само значение 3K.]]
     -----------------
     function Read_number(read)
        Number = nil
        repeat
             io.write(read)
            Number = tonumber( io.read())	
    
        until type(Number) == "number" and Number%1 == 0 and Number>1
        return Number
    end
    --------------
    function Logik(N)
        counter = 0
        repeat
         counter = counter+1
         
        until counter*3>N
         return counter  
    end
    --------------
    do
        N = Read_number("Enter an integer greater than 1 : ")
       
        K = Logik(N)
        print (N.." Your number - K = "..K.." 3*K = "..tostring(3*K))

    end