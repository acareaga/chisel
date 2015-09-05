require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'paragraph'

class ParagraphTest < Minitest::Test

  def test_if_it_exists
    assert Paragraph.new("Test paragraph.\n")
  end

  def test_if_paragraph_converted
    text = Paragraph.new("Test Paragraph.\n")
    assert_equal "<p>Test Paragraph.</p>", text.html_version
  end

  def test_multiple_lines_of_text_with_no_breaks
    skip
  end

  def test_multiple_lines_of_text_with_line_breaks
    skip
  end

  def test_text_with_multiple_line_breaks_across_paragraphs
    skip
  end

  def test_scope_of_paragraph_converter_with_special_characters
    skip
  end

end
