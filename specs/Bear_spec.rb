require('minitest/autorun')
require('minitest/rg')
require_relative("../Bear.rb")
require_relative("../Fish.rb")
require_relative("../River.rb")

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

  def test_check_if_stomach_is_empty()
    assert_equal(0, @bear.stomach)
  end

  def test_can_bear_eat_fish()
    #Arrange
    fish1 = Fish.new("Trump")
    #Act
    @bear.eat_fish(fish1)
    #Assert
    assert_equal(1, @bear.stomach)
  end

  def test_if_bear_can_roar()
    assert_equal("ROAARRR!!", @bear.roar)
  end



end


# A bear should be able to take a fish from the river
# A river should lose a fish when a bear takes a fish
