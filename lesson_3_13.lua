-- Даны вещественные координаты точки, не лежащей
-- на координатных осях OX и OY. Вывести номер
-- координатной четверти, в которой находится данная точка.
--------------------------------------------------------
function Read_number(read)
	Number = nil
	repeat
		 io.write(read)
		Number = tonumber( io.read())	

	until type(Number) == "number"
	return (Number)
end
---------------------------------
function Logic(x,y)
    if x>0 and y>0 then
        A_xy = "The coordinates of the point are in 1 quarters"
    elseif x>0 and y<0 then
        A_xy = "The coordinates of the point are in 2 quarters"
    elseif x<0 and y<0 then
        A_xy = "the coordinates of the point are in 3 quarters"
    elseif x<0 and y>0 then
        A_xy = "the coordinates of the point are in 4 quarters"
    elseif x==0 and y==0 then
            A_xy = "The point lies at the origin of the coordinates"
    else A_xy = "Еhe point lies on the coordinate axes"

        
    end
    return A_xy
end
    

do
print("Enter the coordinates of point A(x,y)")
	X = Read_number("Enter the 'X' coordinate : ")
	Y = Read_number("Enter the 'Y' coordinate : ")
    print(Logic(X,Y))
end