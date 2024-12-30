--[[ Дано вещественное число A и целое число N > 0.
     Вывести 1 + A + A2 + A3 + ... + AN.]]
     ------------------------------
     function Read_number(read)
	
        repeat
             io.write(read)
            Number = tonumber( io.read())	
            
        until type(Number) == "number" 
        return Number
    end
    -------------------------------------
    function power(A, N, counter)
      result= result or 1
      series = series or "1"
       --print (A,N,result)
       if counter<=N then
        
        result = result + A*counter
        series = series.." "..tostring(A*counter)
        power(A,N, counter+1)
       end
       return result,series
    end
    do
        repeat
            A=Read_number("Enter a real number : ")
            N=Read_number("E#nter a positive integers number : ") 
        until N%1 == 0 and N>0
        
      
      print("1 + A + A2 + A3 + ... + AN")
    
      print (power(A,N,1))
    end