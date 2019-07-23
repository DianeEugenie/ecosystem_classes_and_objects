require('minitest/autorun')
require('minitest/rg')
require_relative("../Fish.rb")

class FishTest < MiniTest::Test

  def setup()
    # A fish should have a name
  @fish = Fish.new("Dory")
  end

  def test_get_fish_name()
    assert_equal("Dory", @fish.name)
  end
end
