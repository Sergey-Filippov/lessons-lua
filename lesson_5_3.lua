-- Дано вещественное число A и целое число N > 0.
-- Вывести A в степени N: AN = A·A·...·A (числа A
-- перемножаются N раз).
------------------------------------
function Read_number(read)
	
	repeat
		 io.write(read)
		Number = tonumber( io.read())	
        
	until type(Number) == "number" 
	return Number
end
--------------------------------

do
    repeat
        A=Read_number("Enter a real number : ")
        N=Read_number("E#nter a positive integers number : ") 
    until N%1 == 0 and N>0
    
   result = A^N
   print(result)
end