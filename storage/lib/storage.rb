require 'pry'
class Storage
  def self.dump(filename)
      binding.pry
      File.open("todox.txt","a") {|file| file.write("hello")}
  end
  def self.load
binding.pry
     data = ""
     f = File.open("todox.txt","r")
     data = f.read
    f.close
   
  end
end
