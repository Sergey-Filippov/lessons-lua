-- Найти решение системы уравнений вида A1x + B1y = 
-- C1,  A2x  +  B2y  =  C2,  заданной  своими 
-- коэффициентами  A1,  B1,  C1,  A2,  B2,  C2
----------
function equation(a1,b1,c1,a2,b2,c2)

    return x,y
end
-------------
function read_data()
    print("Введите коэффициенты системы уравнений ax+bx=c")
    repeat
        if  a1 == nil or b1 == nil or c1 == nil then
            io.write("Введите коэффициенты первого уравнения a,b и c: ")
            a1, b1, c1 =  io.read("n","n","n")
        end
        if type(a1) ~= "number" then a1 = nil end
       
        if type(b1) ~= "number" then b1 = nil end
      
        if type(c1) ~= "number" then c1 = nil end
       
     until  a1~= nil and b1~= nil and c1~=nil

     repeat
        if  a2 == nil or b2 == nil or c2 == nil then
            io.write("Введите коэффициенты второго уравнения a,b и c: ")
            a2, b2, c2 =  io.read("n","n","n")
        end
        if type(a2) ~= "number" then a2 = nil end
       
        if type(b2) ~= "number" then b2 = nil end
      
        if type(c2) ~= "number" then c2 = nil end
       
     until  a1~= nil and b1~= nil and c1~=nil
    return a1,b1,c1,a2,b2,c2
end
----------
do
   a1,b1,c1,a2,b2,c2 = read_data() 
   print( a1,b1,c1,a2,b2,c2)
end