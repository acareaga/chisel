require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'header'

class HeaderTest < Minitest::Test

  def test_it_exists
    assert HeaderTest.new("# Test Markdown")
  end

  def test_h1
    text = Header.new("# Test Header")
    assert_equal "<h1> Test Header</h1>", text.html_version
  end




  # def test_h2(string)
  # ending = " </h2>"
  # assert_equal Header.new(string)
  # end
  #
  # def test_h3(string)
  # ending = " </h3>"
  # assert_equal Header.new(string)
  # end

end
