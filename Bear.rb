class Bear

  attr_reader :name, :type

  def initialize(name, type)

    @name = name
    @type = type
    @stomach = [] #bear should have empty stomach so let's assume

  end

  def stomach()
    return @stomach.count
  end

  def eat_fish()

  end

end
