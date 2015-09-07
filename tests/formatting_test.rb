require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/formatting'

class FormattingTest < Minitest::Test

  def test_it_exists
    skip
    assert FormattingTest.new('<strong>#{middle_text}</strong>')
  end

  def test_convert_italics
    skip
    text = Formatting.new("*Test Italic Words*")
    assert_equal '<em>Test Italic Words</em>', text.formatting_converter
  end

  def test_convert_bold
    skip
    text = Formatting.new("**Test Bold Words**")
    assert_equal '<strong>Test Bold Words</strong>', text.formatting_converter
  end

  def test_convert_ampersand
    string = Formatting.new("I like skiing & food")
    assert_equal "I like skiing &amp; food", string.html_version
  end

  def test_convert_italics_bold_and_ampersand_together
    skip
  end

  def test_convert_bold_within_header
    skip
  end

  def test_convert_bold_within_list
    skip
  end

  def test_convert_bold_within_link
    skip
  end

  def test_convert_italics_within_header
    skip
  end

  def test_convert_italics_within_list
    skip
  end

  def test_convert_italics_within_link
    skip
  end

  def test_convert_ampersand_within_header
    skip
  end

  def test_convert_ampersand_within_list
    skip
  end

  def test_convert_ampersand_within_link
    skip
  end

end
