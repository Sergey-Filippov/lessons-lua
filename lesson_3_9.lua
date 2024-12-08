-- Даны две переменные целого типа: A и B. Если их
-- значения не равны, то присвоить каждой переменной
-- максимальное из этих значений, а если равны, то
-- присвоить переменным нулевые значения.
-------------------------------------------
function Read_number(read)
	Number = nil
	repeat
		 io.write(read)
		Number = tonumber( io.read())	

	until type(Number) == "number"
	return Number
end
function Logic_max(a,b)
	if a==b then a,b = 0,0 return a,b
		end
		
	if a< b then a=b return a,b
		end
	b=a
	
	return a,b
end
---------------------
local number_1 = Read_number("Введите первое число : ")
	local number_2 = Read_number("Введите второе число : ")
	local Num_logik1, Num_logik2 = Logic_max(number_1,number_2)
	print( number_1..' - '..Num_logik1)
	print( number_2..' - '..Num_logik2)