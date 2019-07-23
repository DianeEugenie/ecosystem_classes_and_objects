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
    fish = Fish.new("Trump")
    #Act
    @bear.eat_fish(fish)
    #Assert
    assert_equal(1, @bear.stomach)
  end

  def test_if_bear_can_roar()
    assert_equal("ROAARRR!!", @bear.roar)
  end

  def test_bear_take_fish_from_river()
    #Arrange - create a river
    @river1 = River.new("Luna")
    #create fish
    @fish1 = Fish.new("Donald")
    @fish2 = Fish.new("Boris")
    #add fishes to the river
    @river1.add_fish(@fish1)
    @river1.add_fish(@fish2)

    #Act - take fish from the rivre
    @bear.take_fish_from_river(@river1)
    #Assert - 1 fish should be left in the river and 1 fish should be in the bear's stomach.
    assert_equal(1, @river1.count_fishes())
    assert_equal(1, @bear.stomach())
  end



end





# A bear should be able to take a fish from the river
# A river should lose a fish when a bear takes a fish
