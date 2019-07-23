class Bear

  attr_reader :name, :type

  def initialize(name, type)

    @name = name
    @type = type
    @stomach = [] #bear should have empty stomach so let's assume that with every instance of bear you create - they are hungry.

  end

  def stomach()
    return @stomach.count
  end

  def eat_fish(fish)
    @stomach.push(fish)
  end

end
