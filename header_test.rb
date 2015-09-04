require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'header'

class HeaderTest < Minitest::Test

  def test_it_exists
    assert HeaderTest.new("# Test Markdown")
  end

  def test_h1
    text = Header.new(text)
    assert_equal "<h1>Test Header</h1>", text.html_version
  end

  def test_h2
    skip
    text = Header.new("## Test Header")
    assert_equal "<h2>Test Header</h2>", text.html_version
  end

  def test_h3
    skip
    text = Header.new("### Test Header")
    assert_equal "<h3>Test Header</h3>", text.html_version
  end

  def test_h4
    skip
    text = Header.new("#### Test Header")
    assert_equal "<h4>Test Header</h4>", text.html_version
  end

  def test_h5
    skip
    text = Header.new("##### Test Header")
    assert_equal "<h5>Test Header</h5>", text.html_version
  end

# Test header that wraps two lines
# Test line breaks in header (H1, line break then H2)
# Test multiple header sizes in same line
# Test special characters in line (scope limited to headers)

end
