class Todolist 
# attr_accessor :filename
 def initialize(filename)
   @filename = filename

@pending = []
@todo = []
@completed = []



 end

def pending
  return @pending
end

def list
  @todo = @pending + @completed
 @todo
end

def completed
   @completed
end

def add(title)
  @pending << title
  @pending
end

def complete(num)
@completed << @pending[num - 1]
@pending.delete_at(num - 1)
@completed
end

#def self.incomplete(num)
#var = @todo[num]
#@pending << var
#@completed.delete var
#end

def delete(num)
@completed.delete_at(num - 1)
@completed
end

def empty
@pending = []
@completed = []
@todo = []
return true
end

def modify(num,title)
@pending[num - 1] = title

return @pending[num - 1]
end

def show_pending(num)
 return @pending[num - 1]
end

def show_completed(num)
 return @completed[num - 1]
end

end


