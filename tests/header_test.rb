require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './header'

class HeaderTest < Minitest::Test

  def test_it_exists
    assert HeaderTest.new("# Test Markdown\n")
  end

  def test_h1
    text = Header.new("# My Life in Desserts\n")
    assert_equal "<h1>My Life in Desserts</h1>\n", text.html_version
  end

  def test_h2
    text = Header.new("## Chapter 1: The Beginning\n")
    assert_equal "<h2>Chapter 1: The Beginning</h2>\n", text.html_version
  end

  def test_h3
    text = Header.new("### Chapter 2: The Middle\n")
    assert_equal "<h3>Chapter 2: The Middle</h3>\n", text.html_version
  end

  def test_h4
    text = Header.new("#### Chapter 3: The Middle, Part 2\n")
    assert_equal "<h4>Chapter 3: The Middle, Part 2</h4>\n", text.html_version
  end

  def test_h5
    text = Header.new("##### Chapter 4: The End!\n")
    assert_equal "<h5>Chapter 4: The End!</h5>\n", text.html_version
  end

  def test_header_without_new_line_character
    text = Header.new("###### My Life in Desserts")
    assert_equal "<h6>My Life in Desserts</h6>\n", text.html_version
  end

  def test_scope_of_header_converter_with_markdown_characters
    text = Header.new("### My _Life_ in *Desserts*")
    assert_equal "<h3>My _Life_ in *Desserts*</h3>\n", text.html_version
  end

  def test_scope_of_header_converter_with_html_characters
    text = Header.new("### My <em>Life</em> in <strong>Desserts</strong>")
    assert_equal "<h3>My <em>Life</em> in <strong>Desserts</strong></h3>\n", text.html_version
  end

end
