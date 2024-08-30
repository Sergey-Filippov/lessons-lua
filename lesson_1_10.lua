-- Дана сторона равностороннего треугольника. Найти
-- площадь этого треугольника и радиусы вписанной и
-- описанной окружностей.

function tringl_arifmetic(a)
	s_tringl = (a^2 * 3^0.5)/4		-- площадь равностороннего треугольника
	r_inscribed = (a * 3^0.5)/6     -- вписанная окружность
	r_circumcircle = (a * 3^0.5)/3  -- описанная окружность
	return s_tringl, r_inscribed, r_circumcircle
end
function read_data()
		repeat
			if a == nil or 0 then
				print ("Введите длину стороны равностороннего треугольника, см")
				a = tonumber(io.read())
			end

		if type(a)~= "number" then a = 0 end
		until a > 0
	return a
end
--- main

s_tringl,r_inscribed,r_circumcircle = tringl_arifmetic(read_data())
print("Площадь равностороннего треугольника = "..s_tringl.."см.кв.".."\n"..
	"Радиус вписанной окружности = "..r_inscribed.."см".."\n"..
	"Радиписанной описанной окружности ="..r_circumcircle.."см")