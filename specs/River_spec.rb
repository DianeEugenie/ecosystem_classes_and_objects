
# A bear should have a name e.g. "Yogi" and a type e.g. "Grizzly"
# A bear should have an empty stomach ( maybe an array )
# A bear could have a food_count method
# A river could have a fish_count method

require('minitest/autorun')
require('minitest/rg')
require_relative("../River.rb")

class RiverTest < MiniTest::Test

  def setup()

    @river = River.new("Flow", 500)

  end

  def test_get_river_name()
    assert_equal("Flow", @river.name)
  end

  def test_get_fish_count()
    assert_equal(8, @river.fish_count)
  end




end
