--[[Даны два ненулевых числа. Найти их сумму, разность,
произведение и частное.]]

function arifmetic(a, b)
	return a+b, a-b, a/b, a*b 
end
do
	repeat
	if a == 0 or nil then	
		print("Введите число а?")
		a = tonumber(io.read())
	end
	if type(a) ~= "number" then a = 0 end
	if b == 0 or nil then
		print("Введите число b?")
		b = tonumber(io.read())
	end 
	if type(b) ~= "number" then b = 0 end
until a~=0 and b~=0

	add, subtract, share, multiply = arifmetic(a, b)
	print("Сумма чисел = "..add)
	print("Разность чисер = "..subtract)
	print("Частное от деления = "..share)
	print("Произведение = ".. multiply)
end
-- Задача решена успешно