require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/chisel'

class ChiselTest < Minitest::Test

  def test_input_file_exists
    skip
    input_file = ARGV[0]
    assert input_file
  end

  def test_no_input_file
    skip
    input_file = nil
    assert input_file
  end

  def test_chisel_to_parser_runs
    skip
    output_file = Parser.new(input_file).package_output_file
    assert output_file, my_output.html
  end

end
