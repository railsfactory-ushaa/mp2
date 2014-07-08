require_relative '../lib/item'
require 'test/unit'
require 'pry'


class Itemtest < Test::Unit::TestCase
 def test_one
  assert_equal ':done',Item.complete!
  assert_equal ':pending'Item.pending?
end
end
