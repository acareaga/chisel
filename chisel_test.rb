require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class HeaderTest < Minitest::Test
  def test_it_exists
    assert Header.new("apple")
  end

  # def test_apple_is_a_rotation_of_apple
  #   apple = Header.new("Apple")
  #
  #   assert apple.check_rotation?("Apple")
  # end

end
