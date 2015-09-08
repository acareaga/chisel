require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/formatting'

class FormattingTest < Minitest::Test

  def test_it_exists
    assert FormattingTest.new('<strong>#{middle_text}</strong>')
  end

  def test_convert_italics
    text = Formatting.new("*Test Italic Words*")
    assert_equal '<em>Test Italic Words</em>', text.formatting_converter
  end

  def test_convert_bold
    text = Formatting.new("**Test Bold Words**")
    assert_equal '<strong>Test Bold Words</strong>', text.formatting_converter
  end

  def test_convert_ampersand
    string = Formatting.new("I like skiing & food")
    assert_equal "I like skiing &amp; food", string.html_version
  end

  def test_bold_with_new_line_characters
    text = Formatting.new("**bold**\n")
    assert_equal "<strong>bold</strong>", text.formatting_converter
  end

  def test_italics_with_new_line_character
    text = Formatting.new("*italics*\n")
    assert_equal "<em>italics</em>", text.formatting_converter
  end

  def test_convert_ampersand_with_new_line_character
    text = Formatting.new("dogs & cats & horses\n")
    assert_equal "dogs &amp; cats &amp; horses\n", text.formatting_converter
  end

  def test_scope_of_italics_with_other_markdown_characters
    text = Formatting.new("*dogs, #cats\n, and horses*")
    assert_equal "<em>dogs, #cats\n, and horses</em>", text.formatting_converter
  end

  def test_scope_of_italics_with_html_characters
    text = Formatting.new("<p>*dogs, cats, and horses*</p>")
    assert_equal "<em><p>dogs, cats, and horses</p></em>", text.formatting_converter
  end

  def test_scope_of_bold_with_other_markdown
    text = Formatting.new("**dogs, #cats\n, and horses**")
    assert_equal "<strong>dogs, #cats\n, and horses</strong>", text.formatting_converter
  end

  def test_scope_of_bold_with_html_characters
    text = Formatting.new("<p>**dogs, cats, and horses**</p>")
    assert_equal "<strong><p>dogs, cats, and horses</p></strong>", text.formatting_converter
  end

end
