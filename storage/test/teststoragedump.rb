require_relative '../lib/storage_load.rb'
require_relative '../lib/storage_mark.rb'
require_relative '../lib/storage_status.rb'
require_relative '../lib/storage_dump.rb'
require 'test/unit'


class Teststoragedump < Test::Unit::TestCase
def test_dump
  
   assert_equal 'open #undone
',Storage_dump.dump("open #undone")
    assert_equal 'open #undone
search #undone
',Storage_dump.dump("search #undone")


    assert_equal 'open #undone
search #undone
merge #undone
',Storage_dump.dump("merge #undone")

     assert_equal 'open #undone
search #undone
merge #undone
write #undone
',Storage_dump.dump("write #undone")
     assert_equal 'open #undone
search #undone
merge #undone
write #undone
read #undone
',Storage_dump.dump("read #undone")
end

def test_load

assert_equal 'open #undone
search #undone
merge #undone
write #undone
read #undone',Storage_load.load
end

def test_mark

assert_equal'open #done
search #undone
merge #undone
write #undone
read #undone
', Storage_mark.mark(0)
assert_equal'open #done
search #undone
merge #done
write #undone
read #undone
', Storage_mark.mark(2)
end


#def test_one
#    assert_equal 'search #undone write #undone read #undone',Status.pend
#end
end
