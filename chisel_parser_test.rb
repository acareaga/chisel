require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'chisel_parser'

class ChiselParserTest < Minitest::Test

  def test_input_file_exists
    assert ChiselParser.new(input_file)
  end

  def test_read_and_split_file
    skip
  end

  def test_file_parser
    skip
  end

  def test_create_and_package_output
    skip
  end

  def test_markdown_to_html_conversion
    skip
    assert_equal html, output_file
  end

end
