-- Даны три целых числа. Возвести в квадрат отрицательные
-- числа и в третью степень - положительные (число 0 не изменять).

function Read_number(read)
	Number = nil
	repeat
		 io.write(read)
		Number = tonumber( io.read())	

	until type(Number) == "number"
	return Number
end

function Logic(a)
	if a == 0 then return 0 end
	if a < 0 then return a^2 end
	return a^3
end

---------------
do
	number_1 = Read_number("Введите первое число : ")
	number_1 = Logic(number_1)
	number_2 = Read_number("Введите второе число : ")
	number_2 = Logic(number_2)
	number_3 = Read_number("Введите третье число : ")
	number_3 = Logic(number_3)
	print( number_1, number_2, number_3)
	
end
