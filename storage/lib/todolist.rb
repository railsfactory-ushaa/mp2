require './item'
class Todolist
	attr_accessor :items
	def initialize
		@items=[]
	end
	def add(item)
		@items << item
	end
	def pending
		@items.select { |i| i.pending? }
	end
	def delete(item)
		@items.delete item
	end
	
end



class CLI
	attr_accessor :list
	def add(title)
		title = ARGV[1]
		
		@list.add(Item.parse(title))
		
	end
	def run_command(args)
		@list=Todolist.parse("todox.txt")
		if(args.first=="add")
			add(args[0])
		end

		list.save(fname)
	end

end
# CLI.new.run_command(ARGV)

item = Item.new("Completed item",:done)
item.pending? # should be true
item2 = Item.new("My Item",:pending)
item.pending? # should be false
item3 = Item.parse("Learn ruby #done")
item4 = Item.new("extra",:done)
puts "Title of item -- #{item3.title}"
puts "Status of item -- #{item3.status}"


list=Todolist.new
list.add(item)
list.add(item2)
list.add(item3)
list.add(item4)
list.items.each { |i| puts i }
list.save("todox.txt")
list2=Todolist.load("todox.txt")


# list.delete(item3)
# list.items.each { |i| puts i }
