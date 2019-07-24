
# A bear should have a name e.g. "Yogi" and a type e.g. "Grizzly"
# A bear should have an empty stomach ( maybe an array )
# A bear could have a food_count method
# A river could have a fish_count method

class River

  attr_reader :name, :fishes

  def initialize(name, fish)

    @name = name
    @fish = fish

  end

  def fish_count()
    @fish.size()
  end

  def add_fish(fish)
    @fish.push(fish)
  end


  def lose_fish()
    return @fish.pop()
  end


end
