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
    assert_equal "<h1>Test Header</h1>", text.html_version
  end

# Test H1
# Test H2
# Test H3
# Test H4
# Test H5
# Test header that wraps two lines
# Test line breaks in header (H1, line break then H2)
# Test multiple header sizes in same line
# Test special characters in line (scope limited to headers)

end
