require('minitest/autorun')
require('minitest/rg')
require_relative("../Bear.rb")
require_relative("../Fish.rb")
require_relative("../River.rb")

class BearTest < MiniTest::Test

  def setup()
    # A fish should have a name
  @bear = Bear.new("Teddyursa", "Giant Panda")


  @fish = Fish.new("Trump")
  end

  def test_get_bear_name()
    assert_equal("Teddyursa", @bear.name)
  end

  def test_get_bear_type()
    assert_equal("Giant Panda", @bear.type)
  end

  def test_check_if_stomach_is_empty()
    assert_equal(0, @bear.food_count)
  end

  def test_can_bear_add_fish()

    #Act
    @bear.add_fish(@fish)
    #Assert
    assert_equal(1, @bear.food_count)
  end

  def test_bear_can_take_fish_from_river()
    #Arrange - bear needs access to a river - give the bear the river
    river = River.new("Luna", [@fish, @fish])
    #Act - take fish from the river
    @bear.eat_fish_from_river(river)
    #Assert - 1 fish should be left in the river and 1 fish should be in the bear's stomach.
    assert_equal(1, river.fish_count())
    assert_equal(1, @bear.food_count())
  end

  def test_if_bear_can_roar()
    assert_equal("ROAARRR!!", @bear.roar)
  end




end





# A bear should be able to take a fish from the river
# A river should lose a fish when a bear takes a fish
