--[[    Дано целое число N > 1. Вывести наибольшее целое
        K, при котором выполняется неравенство 3K < N, и
        само значение 3K.  ]]
-----------------------------------------------------
function Read_number(read)
Number = nil
repeat
     io.write(read)
    Number = tonumber( io.read())	

until type(Number) == "number" and Number%1 == 0 and Number>1
return Number
end
--------------
function Logik(N)
for i=N, 1, -1 do
    if 3*i<N then return i end
end
return 0
end
--------------
do
N = Read_number("Enter an integer greater than 1 : ")

K = Logik(N)
print (N.." Your number - K = "..K.." 3*K = "..tostring(3*K))

end