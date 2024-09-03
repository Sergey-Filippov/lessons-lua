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
        io.write("Введиите коордитаты первой точки через пробел А(x,y) ")
        local x1,y1 = io.read("*n","*n")
        if not x1 then
            io.write("Вы неправильно ввели координату x")    
        end
        if not y1 then
            io.write("Вы неправильно ввели координату y")    
        end
        io.write("Введиите коордитаты второй точки B(x,y) ")
        local x2,y2 = io.read("*n","*n")
        if not x2 then
            io.write("Вы неправильно ввели  координату x")    
        end
        if not y2 then
            io.write("Вы неправильно ввели координату y")    
        end
        io.write("Введиите коордитаты третьей точки C(x,y) ")
        local x3,y3 = io.read("*n","*n")
        if not x3 then
            io.write("Вы неправильно ввели  координату x")    
        end
        if not y3 then
            io.write("Вы неправильно ввели координату y")    
        end
    until x1 and y1 and x2 and y2 and x3 and y3
    return x1,y1,x2,y2,x3,y3
end

P,S = arifmetic(read_data())
print("Периметр данного треугольника равен "..P.." см")
print("Площадь данного трейгольника равна "..S.." см.кв.")