--  Найти расстояние между двумя точками с заданными 
-- координатами (x1, y1) и (x2, y2)

function line(x1,y1,x2,y2)
    -- A(x1,y1) and B(x2,y2); AB=((x1-x2)^2+(y1-y2)^2)^0.5
    return ((x1-x2)^2+(y1-y2)^2)^0.5
end

function read_Coordinates()
    repeat
    if x1 == nil  then
    print("Введиите коордитаты первой точки А, х1")
    x1 = tonumber(io.read())
    end
    if type(x1) ~= "number" then x1=nil end
    if y1 == nil then
        print("Введиите коордитаты первой точки А, y1")
        y1 = tonumber(io.read())
    end
    if type(y1) ~= "number" then y1=nil end
    if x2 == nil then
        print("Введиите коордитаты первой точки B, х2")
        x2 = tonumber(io.read())
    end
    if type(x2) ~= "number" then x2=nil end
    if y2 == nil then
        print("Введиите коордитаты первой точки B, y2")
        y2 = tonumber(io.read())
    end
    if type(y2) ~= "number" then y2=nil end
    until x1 and y1 and x2 and y2
    return x1,y1,x2,y2
end

do
    AB = math.floor(line(read_Coordinates())*100 + 0.5)/100
    print ("Расстояние между двумя точками А("..x1..","..y1..") и B("..x2..","..y2..").".." Равно "..AB)
end