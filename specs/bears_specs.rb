require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bears')
require_relative('../fish')
require_relative('../river')

class BearTest < MiniTest::Test

def setup()
  @bear1 = Bear.new("Yogi", "Grizzly")
end

def test_get_name()
  assert_equal("Yogi", @bear1.name())
end

def test_get_type()
  assert_equal("Grizzly", @bear1.type())
end

def test_count_stomach()
  assert_equal(0, @bear1.count_stomach)
end

def test_add_fish()
  @bear1.add_fish("Nemo")
  assert_equal(1, @bear1.stomach.size())
end

def test_roar()
  assert_equal("Yogi roars!", @bear1.roar(@bear1))
end

end
