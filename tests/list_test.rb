require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/list'

class ListTest < Minitest::Test

  def test_it_exists
    assert ListTest.new("* I am a list element\n")
  end

  def test_recognize_ordered_list
    list = List.new("1. I am a list element")
    assert list.ordered_list?
  end

  def test_ordered_list_element_converts
    list = List.new("1. I am a list element")
    assert list.ordered_list?
  end

  def test_unordered_list_element_converts
    text = List.new("* I am a list element\n")
    assert text.list_converter
  end

  def test_mutliple_unordered_list
    text = List.new("* I am a list element\n * I am a list element\n * I am a list element")
    assert text.list_converter
  end

  def test_mutliple_ordered_list
    text = List.new("1. I am a list element\n2. I am a list element\n3. I am a list element")
    assert text.html_version
  end

  def test_unordered_list_with_italics
    text = List.new("1. I am a <em>list element</em>\n2. I am a <em>list element</em>\n3. I am a <em>list element</em>")
    assert text.html_version
  end

end
