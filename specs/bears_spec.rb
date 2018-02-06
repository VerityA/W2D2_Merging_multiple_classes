require("minitest/autorun")
require_relative("../bears")
require_relative("../fish")
require_relative("../river")

class BearsTest < MiniTest::Test

  def setup
    @bear1 = Bear.new("Winnie")
    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Seabass")
    @fish3 = Fish.new("Carp")
    @fish  = [@fish1, @fish2, @fish3]
    @river1 = River.new("Tay", @fish)
  end

  def test_fish_eaten()
    count = @bear1.fish_eaten()
    assert_equal(0, count)
  end

  def test_eat_fish()
    @bear1.eat_fish(@fish1)
    count = @bear1.fish_eaten()
    assert_equal(1, count)
  end

  def test_roar
    roar = @bear1.roar()
    assert_equal("GRRRRR", roar)
  end

  def test_eat_fish_from_river
    @bear1.eat_fish_from_river(@river1, @fish1)
    num_fish_eaten = @bear1.fish_eaten()
    assert_equal(1, num_fish_eaten)
    fish_eaten = @bear1.stomach()
    assert_equal([@fish1], fish_eaten)
    fish_in_river = @river1.fish()
    assert_equal([@fish2, @fish3], fish_in_river)
  end

end
