-- Из трех данных чисел выбрать наименьшее.

function Read_number(read)
	Number = nil
	repeat
		 io.write(read)
		Number = tonumber( io.read())	

	until type(Number) == "number"
	return Number
end
------------------------------
function Logic(a,b,c)
	min = a
	if min > b then min = b end
	if min > c then min = c end
	
	return min
end
-------------------------------
do
	
	number_1 = Read_number("Введите первое число : ")
	number_2 = Read_number("Введите второе число : ")
	number_3 = Read_number("Введите третье число : ")
	print(" Минимальное число из трех = "..Logic(number_1,number_2,number_3) )
end
