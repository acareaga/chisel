require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './list'

class ListTest < Minitest::Test

  def test_it_exists
    assert ListTest.new("* I am a list element\n")
  end

  def test_ordered_list_element_converts
    text = List.new("1. I am a list element")
    assert_equal "<li>I am a list element</li>\n", text.html_version
  end

  def test_unordered_list_element_converts
    skip
    text = List.new("* I am a list element\n")
    assert_equal "<li>I am a list element</li>\n", text.html_version
  end


  def test_unordered_list
    skip
  end

  def test_ordered_list
    skip
  end

  def test_unordered_and_ordered_list_together
    skip
  end

  def test_unordered_list_with_italics
    skip
  end

  def test_unordered_list_with_bold
    skip
  end

  def test_ordered_list_with_italics
    skip
  end

  def test_ordered_list_with_bold
    skip
  end

  def test_unordered_list_with_line_breaks
    skip
  end

  def test_ordered_list_with_line_breaks
    skip
  end

end
