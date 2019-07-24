require("minitest/autorun")
require("minitest/rg")
require_relative("../River.rb")
require_relative("../Fish.rb")
require_relative("../Bear.rb")

class RiverTest < MiniTest::Test

  def setup()
    #Order is important so if you put @river first and then the @fishes it sees fish as nil.
    @fish1 = Fish.new("Boris")
    @fish2 = Fish.new("Teddy")
    fish = [@fish1, @fish2] #fish only applies to the setup

    @river = River.new("Flow", fish)

    # @fish1 = Fish.new("Nora")
    # @fish2 = Fish.new("Boris")
    # @fish3 = Fish.new("Donald")
    # @fish4 = Fish.new("Teddy")
    # @fish5 = Fish.new("Nero")
    # @fish6 = Fish.new("Dora")
    # @fish7 = Fish.new("Pete")
    # @fish8 = Fish.new("Bruce")

  end

  def test_get_river_name()
    assert_equal("Flow", @river.name)
  end

  def test_get_fish_count()
    assert_equal(2, @river.fish_count)
  end

  def test_add_fish_to_river()
    #Act
    @river.add_fish(@fish1)
    #Assert
    assert_equal(3, @river.fish_count)
  end

  def test_lose_fish_from_river()
    returned_fish = @river.lose_fish() #in order to get a return - use .pop (last shift in array) or .unshift and NOT delete
    #Assert
    assert_equal(1, @river.fish_count)
    assert_equal("Teddy", returned_fish.name)
    assert_equal(@fish2, returned_fish)

  end


end
