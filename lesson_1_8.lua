-- Найти длину окружности и площадь круга заданного
-- радиуса R. В качестве значения Pi использовать 3.14

function round(r)
	l = 2*r* math.pi
	sqr = 2 * math.pi * r^2
	return l, sqr
end

function read_data()
	repeat
		if r<=0  then
			print("Введите радиус окружности, см")
			r = tonumber(io.read())
		end
		if type(r) ~= "number" then r=0 end
	until r>0
	return r
end

-- on init
r = 0  -- инициализацию нужно делать глобальной
l, sqr = round(read_data())
print("Площадь круга = "..string.format("%.2f",sqr).."см.кв.".."\n"..
	"Длинна окружности = "..string.format("%.3f", l).."см.")

-- Задача решена успешно