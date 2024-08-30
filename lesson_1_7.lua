-- Дана длина ребра куба. Найти площадь грани,
-- площадь полной поверхности и объем этого куба.

function kub(a)
	s_kv = a^2
	s_kub = s_kv*6
	v_kub = a^3
return s_kv, s_kub, v_kub	
end

function read_data()
	repeat
		if a<=0 then
			print("Введите длину ребра куба, см")
			a = tonumber(io.read())
		end
		if type(a) ~= "number" then a=0 end
	until a>0
	return a
end

-- on init
a = 0
s_kv, s_kub, v_kub = kub(read_data())
print("Площадь грани куба = "..s_kv.."см.кв.".."\n"..
	"Площадь всей поверхности куба = "..s_kub.."см.кв.".."\n"..
	"Объём куба равен = "..v_kub.."см.куб.")

-- Задача решена успешно
		