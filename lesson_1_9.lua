-- Найти площадь кольца, внутренний радиус которого
-- равен R1, а внешний радиус равен R2 (R1 < R2). В
-- качестве значения Pi использовать 3.14.

function ring(r1,r2)
	sqr = 2*math.pi*(r2-r1)^2
	return sqr
end
function read_data()
	repeat
		if r1<=0  then
			print("Введите внутренний радиус кольца, см")
			r1 = tonumber(io.read())
		end
		if type(r1) ~= "number" then r1=0 end
		if r2<=0  then
			print("Введите внешний радиус кольца, см")
			r2 = tonumber(io.read())
		end
		if type(r2) ~= "number" then r2=0 end
		if r1 >= r2 then
			print("Внешний радиус не может быть меньше внутреннего !!!")
			r1, r2 = 0, 0
		end
		
	until r1>0 and r2>0
	return r1, r2
end

-- on init
r1,r2 = 0,0

sqr = ring(read_data())
print("Площадь кольца = "..string.format("%.2f", sqr).."см.кв.")

-- Задача решена успешно