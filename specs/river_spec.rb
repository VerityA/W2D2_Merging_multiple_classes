require("minitest/autorun")
require_relative("../river")
require_relative("../fish")

end

class RiverTest < MiniTest::Test

  def setup
    name = "Forth"
    fish1 = Fish.new("Salmon")
    fish2 = Fish.new("Seabass")
    fish3 = Fish.new("Carp")
    fish4 = Fish.new("Pollock")
    fish = [fish1.name(), fish2.name(), fish3.name(), fish4.name()]
    @river1 = River.new(name, fish)
  end

  def test_lose_fish
    @river1.lose_fish("Seabass")
    fish = @river1.fish()
    assert_equal(["Salmon", "Carp", "Pollock"], fish)
  end

  def test_fish_count
    fish = @river1.fish_count
    assert_equal(4, fish)
  end


end
