-- Дано вещественное число A и целое число N > 0.
-- Вывести все целые степени числа A от 1 до N.
----------------------------------------------
function Read_number(read)
	
	repeat
		 io.write(read)
		Number = tonumber( io.read())	
        
	until type(Number) == "number" 
	return Number
end
-------------------------------------
function power(A, N)
   result =''
   for i=1, N do
    local current_power = A^i
    result = result.. tostring(current_power) .. "  "
   end
    -- Возвращаем результат
    return result
end
do
    repeat
        A=Read_number("Enter a real number : ")
        N=Read_number("E#nter a positive integers number : ") 
    until N%1 == 0 and N>0
    
  result = power(A,N)
  print("All integer powers of "..A.."  from 1 to "..N)
  print (result)
end