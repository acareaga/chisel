require_relative 'paragraph'
require_relative 'header'
require_relative 'formatting'
require_relative 'list'

require 'pry'

# input_file = File.open(ARGV[0], "r")
# puts input_file.read

class ChiselParser

  attr_accessor :text

  def initialize(text)
    @input_file = file
    @text = text
  end

  def read_and_split_input_file(input_file)
    input_file = File.open(ARGV[0], "r")
    text_split_by_line_break = input_file.split("\n\n") # lines.map(&:chomp) split by line break

    file_parser
  end

  def file_parser(text_split_by_line_break) # what needs to happen to text
    text1 = paragraph_converter(text_split_by_line_break)
    text2 = header_converter(text1)
    text3 = formatting_converter(text2)
    text4 = list_converter(text3)

    create_and_package_output_file
  end

  def create_and_package_output_file(text)
    WriteFile.new.output_file(text)

    converted_text = file_parser(text)
    output_file = create_output_html_file(converted_text)
    puts "Converted #{input_file} (#{input_file.lines.length}) to #{output_file} (#{output_file.lines.length})."
  end

end
