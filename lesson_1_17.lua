--  Найти корни квадратного уравнения Ax2 + Bx + C = 0, 
-- заданного  своими  коэффициентами  A,  B,  C 
-- (коэффициент  A  не  равен  0),  если  известно,  что 
-- дискриминант уравнения неотрицателен. 

function discriminant(a,b,c)
    D = b^2 - 4*a*c
  return D  
end
-----
function read_data()
    print ("Введите коэфициенты квадратного уравнения ax² + bx + c = 0 ")
    print("При этом 'a' и 'b' не равны 0")
    repeat
       if a == 0 or  a == nil then
        io.write("Введите коэффициент а отличный от 0 ")
        a = tonumber(io.read())
        if a == 0 or type(a) ~= "number" then a = nil end
       end
    until  a~= nil and a~=0
    ---
    repeat
        if b == 0 or  b == nil then
         io.write("Введите коэффициент b отличный от 0 ")
         b = tonumber(io.read())
         if b == 0 or type(b) ~= "number" then b = nil end
        end
     until  b~= nil and b~=0
     ---
     repeat
        if  c == nil then
         io.write("Введите коэффициент c ")
         c = tonumber( io.read())
         if type(c) ~= "number" then c = nil end
        end
     until  a~= nil
   
    return a,b,c
end
-----
function logik(D)
   if D < 0 then
      message = "Действительных корней уравнения нет" 
   end
   if D == 0 then
      local x = -b/(2*a)
      message ="Корень уравнения один x = "..x
   end
   if D > 0 then
      local x1 = math.floor(100*(-b - D^0.5)/(2*a) +0.5)/100
      local x2 = math.floor(100*(-b + D^0.5)/(2*a) +0.5)/100
       message = "Корни квадратного уравнения равны x1 = "..x1..";  x2 = "..x2
   end   
   return message
end
do

message = logik(discriminant(read_data()))

print(message)
    
end
  
