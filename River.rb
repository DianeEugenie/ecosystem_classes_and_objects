
# A bear should have a name e.g. "Yogi" and a type e.g. "Grizzly"
# A bear should have an empty stomach ( maybe an array )
# A bear could have a food_count method
# A river could have a fish_count method

class River

  attr_reader :name, :fish_count

  def initialize(name, fish_count)

    @name = name
    @fish_count = fish_count

  end

end
