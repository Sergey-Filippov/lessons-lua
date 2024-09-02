-- Найти периметр и площадь равнобедренной трапеции 
-- с  основаниями  a  и  b  (a  >  b)  и  углом  alpha  при 
-- большем основании (угол дан в радианах).
function arifmetic(a,b,alfa)
  local h = ((a-b)/2)*math.tan(alfa)  
  local c = h/math.sin(alfa)
  P = math.floor((a+b+2*c)*100 +0.5)/100
  S = math.floor( (h*(a+b)/2)*100 +0.5)/100
  return P,S
end
function read_data()
    repeat
        if a == 0  or nil then
            print("Введите длину больщего основания 'а',см")  
            a  =tonumber(io.read())
        end
        if type(a) ~= "number" then a =0 end
        if b == 0  or nil then
            print("Введите длину меньшего основания 'b',см")  
            b  =tonumber(io.read())
        end
        if type(b) ~= "number" then b =0 end   
        if a <= b then 
            print("Основание а должно быть больше основания b") 
            a,b = 0,0
        end
        if alfa == nil or 0 then
            print("Введите угол при основании 'a' в радианах")  
            alfa  =tonumber(io.read())
        end
        if type(alfa) ~= "number" then alfa =0 end
    until a>0 and b>0 and alfa>0 and alfa<math.pi/2
	return a,b,alfa
end
------
do
    ---- on init
    a,b,alfa = 0,0,0
    -----------
    
P, S = arifmetic(read_data())
print("Периметр равнобедренной трапеции = "..P.."см".."\n"..
"Площадь трапеции = "..S.."кв.см.")
end