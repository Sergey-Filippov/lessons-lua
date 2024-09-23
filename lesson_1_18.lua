-- Найти решение системы уравнений вида A1x + B1y = 
-- C1,  A2x  +  B2y  =  C2,  заданной  своими 
-- коэффициентами  A1,  B1,  C1,  A2,  B2,  C2
----------
function equation(a1,b1,c1,a2,b2,c2)
if a1 ==0 then
    y = c1/b1
    x = c2 - b2*y

elseif a2 ==0 then
    y = c2/b2
    x = c1 - b1*y

elseif b1 ==0 then
    x = c1/a1
    y = c2 - b2*x

elseif b2 ==0 then
    x = c2/a2
    y = c1 - b1*x
else
    y = (c2-(a2*c1/a1))/(b2-(b1*a2/a1))
    x = (c1-b1*y)/a1
end
    return x,y
end
-------------
function read_data()
    print("Введите коэффициенты системы уравнений ax+bx=c")
    repeat   

        repeat
            if  a1 == nil or b1 == nil or c1 == nil then
                io.write("Введите коэффициенты первого уравнения через пробел a,b и c: ")
                a1, b1, c1 =  io.read("n","n","n")
            end
            if type(a1) ~= "number" then a1 = nil end
        
            if type(b1) ~= "number" then b1 = nil end
        
            if type(c1) ~= "number" then c1 = nil end
            if a1 == 0 and b1 == 0 then 
                a1, b1 = nil,nil
                print(" 'a' и 'b' не равны нулю одновременно")
            end
        
        until  a1~= nil and b1~= nil and c1~=nil

        repeat
            if  a2 == nil or b2 == nil or c2 == nil then
                io.write("Введите коэффициенты второго уравнения через пробел a,b и c: ")
                a2, b2, c2 =  io.read("n","n","n")
            end
            if type(a2) ~= "number" then a2 = nil end
        
            if type(b2) ~= "number" then b2 = nil end
        
            if type(c2) ~= "number" then c2 = nil end
            if a2 == 0 and b2 == 0 then 
                a2, b2 = nil,nil
                print(" 'a' и 'b' не равны нулю одновременно")
            end
        
		until  a2~= nil and b2~= nil and c2~=nil
	if (a1 == 0 and a2 == 0) or (b1 == 0 and b2 == 0 ) then
		a1,b1,a2,b2 =nil,nil,nil,nil
		print("Внимательнее вводите коэффициенты")
	end
	
    until a1 ~= nil or a2 ~= nil or b1 ~= nil or b2 ~= nil

    return a1,b1,c1,a2,b2,c2
end
----------
do
   x,y = equation(read_data() )
   print( "x = "..x)
   print( "y = "..y)
end