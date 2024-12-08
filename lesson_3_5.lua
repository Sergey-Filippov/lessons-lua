-- Перераспределить значения переменных X и Y так,
-- чтобы в X оказалось меньшее из этих значений, а в Y — большее.
function Read_number(read)
	Number = nil
	repeat
		 io.write(read)
		Number = tonumber( io.read())	

	until type(Number) == "number"
	return Number
end
------------------------------
function Logic(x,y)
	if y < x then 
		min = y
		y,x=x,min
		end
	
	return x,y
end
-------------------------------
do
	
	number_1 = Read_number("Введите первое число : ")
	number_2 = Read_number("Введите второе число : ")
	x,y = Logic(number_1,number_2)
	if x==y then print("Числа равны")end
	print(" X = ".. x)
	print(" Y = ".. y)
end