--[[  Даны целочисленные координаты точки на плоскости.
Если точка не лежит на координатных осях, то
вывести 0. Если точка совпадает с началом координат,
то вывести 1. Если точка не совпадает с началом
координат, но лежит на оси OX или OY, то вывести
соответственно 2 или 3.    ]]
-----------------------------------
function Read_number(read)
	Number = nil
	repeat
		 io.write(read)
		Number = tonumber( io.read())	

	until type(Number) == "number"
	return (Number)
end
-------------------------------
function Logic(x,y)
	if x==0 and y==0 then 
		A = 1
		return A,"The point lies at the origin of the coordinates"
		end
	if x==0 and y~=0 then
		A= 2
		return A, "The point lies on the OX axis"
	end
	if x~=0 and y==0 then
		A = 3
		return A, "The point lies on the OY axis"
	end
	return 0, "The point does not lie on the coordinate axes"
end

do
	print("Enter the coordinates of point A(x,y)")
	X = Read_number("Enter the 'X' coordinate : ")
	Y = Read_number("Enter the 'Y' coordinate : ")
	A_xy,Read = Logic(X,Y)
	
	print(Read.."   "..A_xy)
end
