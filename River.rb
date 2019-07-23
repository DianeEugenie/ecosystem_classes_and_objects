
# A bear should have a name e.g. "Yogi" and a type e.g. "Grizzly"
# A bear should have an empty stomach ( maybe an array )
# A bear could have a food_count method
# A river could have a fish_count method

class River

  attr_reader :name

  def initialize(name)

    @name = name
    @fishes = []

  end

  def add_fish(fish)
    @fishes.push(fish)
  end

  def fish_count()
    @fishes.count()
  end

  def remove_fish(fish)
    @fishes.delete(fish)
  end


end
