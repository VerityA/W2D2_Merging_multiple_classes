class River

  attr_reader :fish, :name

  def initialize(name, fish)
    @name = name
    @fish = fish
  end

  def lose_fish(fish_name)
    @fish.delete(fish_name)
  end

  def fish_count
    return @fish.count()
  end

end
