require_relative '../lib/spell_digit'
require 'test/unit'


class TestSpell_digit < Test::Unit::TestCase

  def test_hello
    assert true
  end


  def test_one
   assert_equal "ten",Spell_digit.convert(10)
   assert_equal "eleven",Spell_digit.convert(11)
   assert_equal "twelve",Spell_digit.convert(12)
   assert_equal "thirty three",Spell_digit.convert(33)
   
   
  end
end
