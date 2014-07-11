require_relative '../lib/todolist.rb'
require 'test/unit'
class TestTodo < Test::Unit::TestCase
 
  $s = Todolist.new("usha.txt")
 

 def test_zempty
  assert_equal true,$s.empty
  assert_equal 0,$s.pending
  assert_equal 0,$s.completed
  assert_equal 0,$s.list
 end
  def test_add1
   
   assert_equal 1,$s.add("open")
   assert_equal 1,$s.list
   assert_equal 1,$s.pending
   assert_equal 0,$s.completed
 end
  def test_add2
   assert_equal 2,$s.add("search")
   assert_equal 2,$s.list
   assert_equal 2,$s.pending
   assert_equal 0,$s.completed
 end
 def test_add3

   assert_equal 3,$s.add("write")
   assert_equal 3,$s.list
   assert_equal 3,$s.pending
   assert_equal 0,$s.completed
 end
 def test_add4
   assert_equal 4,$s.add("save")
   assert_equal 4,$s.list
   assert_equal 4,$s.pending
   assert_equal 0,$s.completed
 end
  
 def test_complete
   assert_equal 1,$s.complete(1)
   assert_equal 3,$s.pending
   assert_equal 1,$s.completed
   assert_equal 4,$s.list
 end
def test_delete
   assert_equal 0,$s.delete(1)
   assert_equal 3,$s.pending
   assert_equal 0,$s.completed
   assert_equal 3,$s.list
 end

 def test_modify
   assert_equal "merge",$s.modify(3,"merge")
   assert_equal "read",$s.modify(4,"read")
   assert_equal 4,$s.pending
   assert_equal 0,$s.completed
   assert_equal 4,$s.list
 end
 

def test_pend
  assert_equal "write",$s.show_pending(2)
  assert_equal "read",$s.show_pending(4)
end
def test_qcompleted
  assert_equal nil,$s.show_completed(1)
  
end
end
