require('minitest/autorun')
require('minitest/rg')
require_relative("../River.rb")
require_relative("../Fish.rb")

class RiverTest < MiniTest::Test

  def setup()

    @river = River.new("Flow")

    @fish1 = Fish.new("Nora")
    @fish2 = Fish.new("Boris")
    @fish3 = Fish.new("Donald")
    @fish4 = Fish.new("Teddy")
    @fish5 = Fish.new("Nero")
    @fish6 = Fish.new("Dora")
    @fish7 = Fish.new("Pete")
    @fish8 = Fish.new("Bruce")

  end

  def test_get_river_name()
    assert_equal("Flow", @river.name)
  end

  def test_get_fish_count()
    assert_equal(0, @river.fish_count)
  end

  def test_add_fish_to_river()
    #Act
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @river.add_fish(@fish3)
    @river.add_fish(@fish4)
    @river.add_fish(@fish5)
    @river.add_fish(@fish6)
    @river.add_fish(@fish7)
    @river.add_fish(@fish8)
    #Assert
    assert_equal(8, @river.fish_count)
  end


  def test_remove_fish_from_river()
    #Arrange
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    #Act
    @river.remove_fish(@fish1)
    #Assert
    assert_equal(1, @river.fish_count)
  end


end
