class Roman

  def self.convert(input)
          if (input < 1 || input > 4000)
        return "Invalid Roman Number Value"
    end
    String s = ""
    
    while (input >= 1000) do
        s += "M"
        input -= 1000   
    end     
    while (input >= 900) do
        s += "CM"
        input -= 900
    end
    while (input >= 500) do
        s += "D"
        input -= 500
    end
    
    while (input >= 400) do
        s += "CD"
        input -= 400
    end
   
    while (input >= 100) do
        s += "C"
        input -= 100
    end
    while (input >= 90) do
        s += "XC"
        input -= 90
    end
    while (input >= 50) do
        s += "L"
        input -= 50
    end
   
    while (input >= 40) do
        s += "XL"
        input -= 40
    end
    while (input >= 10) do
        s += " "
        input -= 10
    end
    while (input >= 9) do
        s += "IX"
        input -= 9
    end
 
    while (input >= 5) do
        s += "V"
        input -= 5 
    end
  
    while (input >= 4) do
        s += "IV"
        input -= 4
    end
  
    while (input >= 1) do
        s += "I"
        input -= 1
    end   
   return s
  end
end 




