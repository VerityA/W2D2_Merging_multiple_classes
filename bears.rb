class Bear

attr_reader :stomach, :name

  def initialize(name)
    @name = name
    @stomach = []
  end

  def fish_eaten()
    return @stomach.length()
  end

  def eat_fish(fish)
    @stomach << fish
  end

  def eat_fish_from_river(river, fish)
    eat_fish(fish)
    river.lose_fish(fish)
  end

  def roar()
    return "GRRRRR"
  end
end
