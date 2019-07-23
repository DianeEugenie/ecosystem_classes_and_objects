require('minitest/autorun')
require('minitest/rg')
require_relative("../Bear.rb")

class BearTest < MiniTest::Test

  def setup()
    # A fish should have a name
  @bear = Bear.new("Teddyursa", "Giant Panda")
  end

  def test_get_bear_name()
    assert_equal("Teddyursa", @bear.name)
  end

  def test_get_bear_type()
    assert_equal("Giant Panda", @bear.type)
  end

end






# A bear should have a name e.g. "Yogi" and a type e.g. "Grizzly"
# A bear should have an empty stomach ( maybe an array )
# A bear could have a food_count method
# A river could have a fish_count method
