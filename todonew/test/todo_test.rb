require_relative '../lib/todolist.rb'
require 'test/unit'
class TestTodo < Test::Unit::TestCase
 

def setup

  @a = Todolist.new("usha.txt")
 
end

def teardown

  @a=nil
 
end


 def test_zempty
  @a.empty
  assert_equal 0,@a.pending.size
  assert_equal 0,@a.completed.size
  assert_equal 0,@a.list.size
 end



  def test_add1
   @a.empty
   @a.add("one")
   assert_equal 1,@a.list.size
   assert_equal 1,@a.pending.size
   assert_equal 0,@a.completed.size
 end



  def test_add2
@a.empty
@a.add("one")
   @a.add("two")
   assert_equal 2,@a.list.size
   assert_equal 2,@a.pending.size
   assert_equal 0,@a.completed.size
 end


=begin

 def test_add3

   assert_equal 3,@a.add("write")
   assert_equal 3,@a.list
   assert_equal 3,@a.pending
   assert_equal 0,@a.completed
 end
 def test_add4
   assert_equal 4,@a.add("save")
   assert_equal 4,@a.list
   assert_equal 4,@a.pending
   assert_equal 0,@a.completed
 end
=end


  
 def test_complete
# precondition
@a.empty
@a.add("one")
#before state
assert_equal 1,@a.pending.size
assert_equal 0,@a.completed.size
assert_equal 1,@a.list.size


#action
   @a.complete(1)

#after 
assert_equal 0,@a.pending.size
assert_equal 1,@a.completed.size
assert_equal 1,@a.list.size
 end



def test_delete
# precondition
@a.empty
@a.add("one")
 @a.complete(1)

#before state
#before state
assert_equal 0,@a.pending.size
assert_equal 1,@a.completed.size
assert_equal 1,@a.list.size

  @a.delete(1)

   assert_equal 0,@a.pending.size
   assert_equal 0,@a.completed.size
   assert_equal 0,@a.list.size
 end


=begin

 def test_modify
   assert_equal "merge",@a.modify(3,"merge")
   assert_equal "read",@a.modify(4,"read")
   assert_equal 4,@a.pending
   assert_equal 0,@a.completed
   assert_equal 4,@a.list
 end
 

def test_pend
  assert_equal "write",@a.show_pending(2)
  assert_equal "read",@a.show_pending(4)
end
def test_qcompleted
  assert_equal nil,@a.show_completed(1)
  
end
=end
end
