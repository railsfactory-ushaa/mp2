class Todolist
 attr_accessor :filename, :todo, :pending, :completed
@pending = []
@todo = []
@completed = []
 def initialize(filename)
   @filename = filename
 end
def self.pending
  return @pending.size
end
def self.list
  @todo = @pending + @completed
 return @todo.size
end
def self.completed
   return @completed.size
end
def self.add(item)
  @pending << item
 return @pending.size
end
def self.complete(num)
@todo[num] + "done"
var = @todo[num]
@completed << var
@pending.delete var
end
def self.incomplete(num)
@todo[num] + "done"
var = @todo[num]
@pending << var
@completed.delete var
end
def self.delete(num)
@completed.delete_at(num)
return @completed.size
end
def self.modify(num,item)
@pending.delete_at(num)
@pending[num] = item 
end
def self.empty
@pending.clear
@completed.clear
@todo.clear
return true
end
end
#t = Todolist.new('usha.txt')
#t.pending
#t.complete()
#t.list
#t.completed
#t.delete
#t.modify
#t.add

