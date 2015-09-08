require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/parser'

class ParserTest < Minitest::Test

  def test_text_exists
    input_file = ["string of text from file added by user"]
    assert input_file
  end

  def test_create_and_package_output
    output_file = File.open("my_output.html", 'w')
    assert output_file
  end

  def test_read_and_split_file
    skip
    text = File.open(input_file).read.split("\n\n")
    assert_equal text, input_file.read.split("\n\n")
  end

  def test_file_parse_elements
    skip
    parsed = file_parse_elements
    assert_equal parsed, text.file_parse_elements
  end

  def test_file_parse_style
    skip
    output_file = file_parse_style
    assert_equal output_file, text.file_parse_style
  end

  def test_markdown_to_html_conversion
    skip
    assert_equal html, output_file
  end

end
