 --[[ Скорость  лодки  в  стоячей  воде  V  км/ч,  скорость 
течения реки U км/ч (U < V). Время движения лодки 
по  озеру  T1  ч,  а  по  реке  (против  течения)  —  T2  ч. 
Определить путь S, пройденный лодкой. ]]

function arifmetic(v1, v2, t1, t2)
	s = v1*t1 + (v1-v2)*t2
	return s
end
do
	v1,v2,t1,t2 = 0,0,0,0
	repeat
	if v1 <= 0 or nil then	
		print("Введите cкорость  лодки  в  стоячей  воде  V  км/ч?")
		v1 = tonumber(io.read())
	end
	if type(v1) ~= "number" then v1 = 0 end
	if v2 <= 0 or nil then
		print("Введите скорость течения реки U км/ч?")
		v2 = tonumber(io.read())
	end 
	if type(v2) ~= "number" then v2 = 0 end
	if v2 >= v1 then print("Скорость реки слишком большая") v2=0 end
	
	if t1 <= 0 or nil then	
		print("Введите время движения лодки в стоячей воде T ч?")
		t1 = tonumber(io.read())
	end
	if type(t1) ~= "number" then t1 = 0 end
	if t2 <= 0 or nil then	
		print("Введите время движения лодки по реке T ч?")
		t2 = tonumber(io.read())
	end
	if type(t2) ~= "number" then t2 = 0 end
until v1>0 and v2>0 and t1>0 and t2>0

	way = arifmetic(v1, v2, t1, t2)
	print("Путь пройденный лодкой по озеру и против течения реки = "..way.."км")
end

-- Задача решена успешно