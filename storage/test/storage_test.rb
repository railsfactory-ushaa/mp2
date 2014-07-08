require_relative '../lib/storage'
require 'test/unit'
require 'pry'

class TestStorage < Test::Unit::TestCase
 def test_one
binding.pry
  assert_equal 'hello', Storage.dump("todox.txt")
  assert_equal 'hello',Storage.load
end
end

