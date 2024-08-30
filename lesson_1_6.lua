-- Найти периметр и площадь прямоугольного
-- треугольника, если даны длины его катетов a и b.

function arifmetic(a,b)
	s = a*b/2
	c = (a^2 + b^2)^0.5
	p = a+b+c
	return  s, p
end

function read_data()	
	repeat
		if a <= 0 or nil then	
			print("Введите длину первого катета, см ?")
			a = tonumber(io.read())
		end
		if type(a) ~= "number" then a = 0 end
		if b <= 0 or nil then
			print("Введите длину второго катета, см ?")
			b = tonumber(io.read())
		end 
		if type(b) ~= "number" then b = 0 end
	
	
	until a>0 and b>0 
	return a,b
end

do
	-- Инициализация
	a,b = 0,0
	
	Sq, Per = arifmetic(read_data())
	print("Площадь треугольника = "..Sq.."кв.см.".."\n".." Периметр = "..string.format("%.2f",Per).."см")
end 

-- Задача решена успешно, String.format не округляет, а обрезает значение по второму знаку