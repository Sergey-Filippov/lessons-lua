-- На числовой оси расположены три точки: A, B, C.
-- Определить, какая из двух последних точек (B или C)
-- расположена ближе к A, и вывести эту точку и ее
-- расстояние от точки A.
-----------------------------------------------------------
--- Решил усложнить задачу до плоскости с точками А(x,y), B(x1,y1), C(x2,y2)
----------------------------------------------------------------------------

function Read_number(read)
	Number = nil
	repeat
		 io.write(read)
		Number = tonumber( io.read())	

	until type(Number) == "number"
	return (Number)
end
----------------------------
function Distance(A,B,C)

    AB =((B[1]-A[1])^2 + (B[2]-A[2])^2)^0.5
    AC =((C[1]-A[1])^2 + (C[2]-A[2])^2)^0.5
    if AB < AC then
       return AB, "Point B is closer to point A"
       elseif AC<AB then
         return AC, "Point C is closer to point A"
       else
        return AB,"The distance from point B and point C to point A is the same"
    end
	
    
end
-----------------------------------------------
do
    print("Enter the coordinates of point A")
    A_tab = {Read_number("Enter the X coordinate of point A : "),Read_number("Enter the Y coordinate of point A : ")}
    print("Enter the coordinates of point B")
    B_tab = {Read_number("Enter the X coordinate of point B : "),Read_number("Enter the Y coordinate of point B : ")}
    print("Enter the coordinates of point C")
    C_tab = {Read_number("Enter the X coordinate of point C : "),Read_number("Enter the Y coordinate of point C : ")}
    Calculation_result, Print_result = Distance(A_tab,B_tab,C_tab)
    print(Print_result.."   "..Calculation_result)
end