require_relative '../lib/storage'
require 'test/unit'


class TestStorage < Test::Unit::TestCase
 def test_one

  assert_equal 'hello',Storage.dump("hello")
  assert_equal "hello",Storage.load
end
end

