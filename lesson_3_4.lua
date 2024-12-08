-- Из трех данных чисел выбрать наименьше и наибольшее.
function Read_number(read)
	Number = nil
	repeat
		 io.write(read)
		Number = tonumber( io.read())	

	until type(Number) == "number"
	return Number
end
------------------------------
function Logic_max(a,b,c)
	local max = a
	if max < b then min = b end
	if max < c then min = c end
	
	return max
end
-------------------------------
function Logic_min(a,b,c)
	min = a
	if min > b then min = b end
	if min > c then min = c end
	
	return min
end
--------------------------------
do
	
	number_1 = Read_number("Введите первое число : ")
	number_2 = Read_number("Введите второе число : ")
	number_3 = Read_number("Введите третье число : ")
	print(" Максимальное число из трех = "..Logic_max(number_1,number_2,number_3) )
	print(" Минимальное число из трех = "..Logic_min(number_1,number_2,number_3) )
end