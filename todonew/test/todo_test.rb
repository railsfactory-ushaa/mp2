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
  # precondition
  @a.empty

  #before state
  
  assert_equal 0,@a.list.size
  assert_equal 0,@a.pending.size
  assert_equal 0,@a.completed.size

  #action

  @a.add("one")

  #after

  assert_equal 1,@a.list.size
  assert_equal 1,@a.pending.size
  assert_equal 0,@a.completed.size
end


def test_add2
  # precondition
  @a.empty

  #before state

  assert_equal 0,@a.list.size
  assert_equal 0,@a.pending.size
  assert_equal 0,@a.completed.size
  
  #action

  @a.add("one")
  @a.add("two")
 
  #after

  assert_equal 2,@a.list.size
  assert_equal 2,@a.pending.size
  assert_equal 0,@a.completed.size
end

  
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

  assert_equal 0,@a.pending.size
  assert_equal 1,@a.completed.size
  assert_equal 1,@a.list.size
  
  #action

  @a.delete(1)

  #after

  assert_equal 0,@a.pending.size
  assert_equal 0,@a.completed.size
  assert_equal 0,@a.list.size
end


def test_modify
  # precondition
  @a.empty
  @a.add("one")
  @a.add("two")

 #before state

  assert_equal 2,@a.pending.size
  assert_equal 0,@a.completed.size
  assert_equal 2,@a.list.size

  #action

  @a.modify(1,"merge")
  @a.modify(2,"read")

  #after

  assert_equal 2,@a.pending.size
  assert_equal 0,@a.completed.size
  assert_equal 2,@a.list.size
end
 

def test_pend
  # precondition
  @a.empty
  @a.add("one")
  @a.add("two")
  @a.add("three")

  #before state

  assert_equal 3,@a.pending.size
  assert_equal 0,@a.completed.size
  assert_equal 3,@a.list.size

  #action

  assert_equal "two",@a.show_pending(2)
  assert_equal "three",@a.show_pending(3)

  #after

  assert_equal 3,@a.pending.size
  assert_equal 0,@a.completed.size
  assert_equal 3,@a.list.size

end

def test_qcompleted
  #pre condition
  @a.empty
  @a.add("one")
  @a.add("two")
  @a.complete(1)

  #before state

  assert_equal 1,@a.pending.size
  assert_equal 1,@a.completed.size
  assert_equal 2,@a.list.size

  #action

  assert_equal "one",@a.show_completed(1)

  #after

  assert_equal 1,@a.pending.size
  assert_equal 1,@a.completed.size
  assert_equal 2,@a.list.size

end
 def test_sload
  @a.empty
  
  @a.loadz

  assert_equal 2,@a.pending.size
  assert_equal 2,@a.completed.size
end
end
