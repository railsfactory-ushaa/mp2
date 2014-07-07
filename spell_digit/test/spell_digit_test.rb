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
   assert_equal "five hundred",Spell_digit.convert(500)
   assert_equal "six hundred and eighty seven",Spell_digit.convert(687)
   assert_equal "one thousand two hundred and fifty",Spell_digit.convert(1250)
   assert_equal "two thousand three hundred and fifty",Spell_digit.convert(2350)
   assert_equal "five thousand eight hundred and ninety",Spell_digit.convert(5890)
   assert_equal "eight thousand nine hundred and ninety nine",Spell_digit.convert(8999)
   
   
   
  end
end
