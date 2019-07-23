# A bear should have a name e.g. "Yogi" and a type e.g. "Grizzly"
# A bear should have an empty stomach ( maybe an array )
# A bear could have a food_count method
# A river could have a fish_count method

class Bear

  attr_reader :name, :type

  def initialize(name, type)

    @name = name
    @type = type
    @stomach = []

  end

end
