--  Дана площадь круга. Найти длину окружности 
-- ограничивающей этот круг. В качестве значения Pi использовать 3.14.

function round()
	repeat
		if sqr==nil or 0 then
			print ("Введите площадь круга, см.кв.")
			sqr = tonumber(io.read())
		end
		if type(sqr)~= "number" then sqr=0 end
	until sqr>0
	return (4*math.pi*sqr)^0.5
end

l = round()
l = math.floor(sqr *100 + 0.5)/100
print("Длина окружности равна = "..l.."см.")