class Storage
  def dump(item)
     f1 = File.open('usha.txt','a+') 
     f1.puts(item)
     f1.close
     f2 = File.open('usha.txt','r')
     data1 = f2.read
     f2.close
     return data1.strip
  end
  def loading

     data = ""
     f = File.open("usha.txt","r")
     data = f.read
    f.close
    return data.strip
   
  end
end
