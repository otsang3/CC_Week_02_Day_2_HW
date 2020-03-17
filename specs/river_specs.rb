require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bears')
require_relative('../fish')
require_relative('../river')

class RiverTest < MiniTest::Test

def setup()
  @bear1 = Bear.new("Yogi", "Grizzly")
  @fish1 = Fish.new("Salmon")
  @fish2 = Fish.new("Tuna")
  @fish3 = Fish.new("Sardine")

  @fish = [@fish1, @fish2, @fish3]
  @river_tay = River.new("Tay", @fish)
end

def test_get_name()
  assert_equal("Tay", @river_tay.name())
end

def test_count_fish()
  assert_equal(3, @river_tay.count_fish())
end

def test_add_fish_to_river()
  @river_tay.add_fish_to_river("Trout")
  assert_equal(4, @river_tay.count_fish())
end

def test_deduct_fish_from_river()
  @river_tay.deduct_fish_from_river(@fish1)
  assert_equal(2, @river_tay.count_fish())
end

def test_can_find_fish_by_name()
  found_pet = @river_tay.can_find_fish_by_name("Salmon")
  assert_equal("Salmon", found_pet.name)
end

def test_can_add_fish_to_bear()
  @river_tay.can_add_fish_to_bear(@bear1, "Salmon")
  # bear stomach + 1 fish
  assert_equal(1, @bear1.count_stomach())
  # river - 1 fish
  assert_equal(2, @river_tay.count_fish())
end





end
