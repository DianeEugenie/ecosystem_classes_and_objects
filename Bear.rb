require("pry")

class Bear

  attr_reader :name, :type

  def initialize(name, type)

    @name = name
    @type = type
    @stomach = [] #bear should have empty stomach so let's assume that with every instance of bear you create - they are hungry.

  end

  def food_count() #functions as the food_count method
    return @stomach.count()
  end

  def add_fish(fish)
    @stomach.push(fish)
  end

  def eat_fish_from_river(river)
    #first get the fish from the river
    fish = river.lose_fish
    #bear eats the fish
    add_fish(fish)
  end



  def roar()
    return "ROAARRR!!"
  end

end
