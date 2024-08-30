-- Дана длина окружности. Найти площадь
-- круга ограниченного этой окружностью. В качестве
-- значения Pi использовать 3.14.
function round()
	repeat
		if l==nil or 0 then
			print ("Введите длину окружномти, см")
			l= tonumber(io.read())
		end
		if type(l)~= "number" then l=0 end
	until l>0
	return l^2/4*math.pi
end

sqr = round()
sqr = math.floor(sqr *100 + 0.5)/100
print("Площадь круга равна = "..sqr.."см.кв.")