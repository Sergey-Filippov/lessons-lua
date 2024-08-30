--[[Скорость первого автомобиля V1 км/ч, второго — V2 км/ч,
 расстояние между ними S км. Определить расстояние между ними через
 T часов, если автомобили первоначально движутся навстречу друг другу.]]
 
function arifmetic(v1, v2, s1, t)
	s = math.abs(s1-(v1+v2)*t)
	return s
end

function read_data()	
	repeat
		if v1 <= 0 or nil then	
			print("Введите cкорость первого автомобиля V1 км/ч?")
			v1 = tonumber(io.read())
		end
		if type(v1) ~= "number" then v1 = -1 end
		if v2 <= 0 or nil then
			print("Введите скорость второго автомобиля V2 км/ч?")
			v2 = tonumber(io.read())
		end 
		if type(v2) ~= "number" then v2 = -1 end
	
	
		if s1 < 0 or nil then	
			print("Введите начальное расстаяние между автомобилями км?")
			s1 = tonumber(io.read())
		end
		if type(s1) ~= "number" then s1= -1 end
		if t <= 0 or nil then	
			print("Введите время движения авобомилей T ч?")
			t = tonumber(io.read())
		end
		if type(t) ~= "number" then t = 0 end
	until v1>0 and v2>0 and s1>=0 and t>0
	return v1, v2, s1, t
end

do
	-- Инициализация
	v1,v2,s1,t = 0,0,-1,0
	
	way = arifmetic(read_data())
	print("Расстояние между автомобилями через "..t.." часов составит = "..way.."км")
end 

-- Задача решена успешно, расстояние между автомобилями может быть ноль.
--[[  v1 🚗__➔___________s1_________________🠔___🚗 v2  ]]