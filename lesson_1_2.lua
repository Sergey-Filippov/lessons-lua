--  Даны  два  числа.  Найти  среднее  арифметическое  их 
--  квадратов и среднее арифметическое их модулей.


function arifmetic(a, b)
	sr_sqr = (a^2 + b^2)/2
	sr_mod = (math.abs(a) + math.abs(b))/2
	return  sr_sqr, sr_mod
end
do
	repeat
	if a == 0 or nil then	
		print("Введите число (не ноль) а?")
		a = tonumber(io.read())
	end
	if type(a) ~= "number" then a = 0 end
	if b == 0 or nil then
		print("Введите число (не ноль) b?")
		b = tonumber(io.read())
	end 
	if type(b) ~= "number" then b = 0 end
until a~=0 and b~=0

	sr_sqr, sr_mod = arifmetic(a, b)
	print("Среднеарифметическое квадратов a и b = "..sr_sqr)
	print("Среднеарифмитическое модуля a и b = "..sr_mod)
	
end
-- Задача решена успешно