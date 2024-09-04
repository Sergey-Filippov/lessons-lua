-- Даны координаты трех вершин треугольника (x1, y1), 
-- (x2, y2), (x3, y3). Найти его периметр и площадь. 

-- A(x1,y1) and B(x2,y2); AB=((x1-x2)^2+(y1-y2)^2)^0.5
-- Формула для вычисления площади треугольника S по длинам его сторон a, b, c:
-- S = √‾‾p(p − a)(p − b)(p − c)‾

function arifmetic(x1,y1,x2,y2,x3,y3)
  local  AB = ((x1-x2)^2+(y1-y2)^2)^0.5
  local  BC = ((x2-x3)^2+(y2-y3)^2)^0.5
  local  CA = ((x3-x1)^2+(y3-y1)^2)^0.5
  local P = AB + BC + CA
  local S = (P*(P-AB)*(P-BC)*(P-CA))^0.5
  P = math.floor(P*100 +0.5)/100
  S = math.floor(S*100 +0.5)/100
    return P,S
end
----------
function read_data()
    repeat
		
		io.write("Введиите коордитаты первой  точки А(x,y)".."\n")
		if x1 == nil  then
			io.write("x = ") 
			x1= tonumber(io.read())
		end
		if y1 == nil then
			io.write("y = ")
			y1 = tonumber(io.read())
		end
       if type(x1) ~= "number" then
            print("Вы неправильно ввели координату x") 
			x1 = nil
        end
		if type(y1) ~= "number" then
            print("Вы неправильно ввели координату y") 
			y1 = nil
        end
		
	until x1 ~= nil and y1 ~= nil
	-----
	repeat
		
		io.write("Введиите коордитаты второй точки B(x,y)".."\n")
		if x2 == nil  then
			io.write("x = ") 
			x2= tonumber(io.read())
		end
		if y2 == nil then
			io.write("y = ")
			y2 = tonumber(io.read())
		end
       if type(x2) ~= "number" then
            print("Вы неправильно ввели координату x") 
			x2 = nil
        end
		if type(y2) ~= "number" then
            print("Вы неправильно ввели координату y") 
			y2 = nil
        end
		
	until x2 ~= nil and y2 ~= nil
	-----
	repeat
		
		io.write("Введиите коордитаты третьей точки C(x,y)".."\n")
		if x3 == nil  then
			io.write("x = ") 
			x3= tonumber(io.read())
		end
		if y3 == nil then
			io.write("y = ")
			y3 = tonumber(io.read())
		end
       if type(x3) ~= "number" then
            print("Вы неправильно ввели координату x") 
			x3 = nil
        end
		if type(y3) ~= "number" then
            print("Вы неправильно ввели координату y") 
			y3 = nil
        end
		
	until x3 ~= nil and y3 ~= nil
       
    
    return x1,y1,x2,y2,x3,y3
end

P,S = arifmetic(read_data())
print("Периметр данного треугольника равен "..P.." см")
print("Площадь данного трейгольника равна "..S.." см.кв.")