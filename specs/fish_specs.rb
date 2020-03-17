require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bears')
require_relative('../fish')
require_relative('../river')

class FishTest < MiniTest::Test

def setup()
  @fish1 = Fish.new("Salmon")
  @fish2 = Fish.new("Tuna")
  @fish3 = Fish.new("Sardine")

  @fish = [@fish1, @fish2, @fish3]
  @river_tay = River.new("Tay", @fish)
end

def test_get_name()
  assert_equal("Salmon", @fish1.name())
end

end
