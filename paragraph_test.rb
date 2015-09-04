require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'paragraph'

class ParagraphTest < Minitest::Test

  def test_if_it_exists
    assert Paragraph.new("Test paragraph.")
  end

  def test_if_paragraph_syntax_converted
    Paragraph.new("Test paragraph.")
    assert_equal "<p>Test Paragraph.</p>", text.html_version
  end


# 13   text = Paragraph.new(text)

  # def test_if_paragraph_syntax_converted
  #   text = Paragraph.new("Test a markdown sentence.")
  #   assert_equal "<p>Test a markdown sentence</p>", text.html_version
  # end

  # Test one chunk of text (one or more lines with no blank lines)
  # Test two chunks of text (two lines with line breaks)
  # Test multiple chunks of text, two or more line breaks in paragraph
  # Test scope of paragraph converter, text that includes special characters

end
