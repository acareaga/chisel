require_relative 'paragraph'
require_relative 'header'
require_relative 'formatting'
require_relative 'list'
require 'pry'

input_file = File.open(ARGV[0], "r")
puts input_file.read

class ChiselParser

  attr_accessor :text

  def initialize(text)
    @input_file = file
    @text = text
  end

  def read_and_split_input_file(input_file)
    input_file = File.open(ARGV[0], "r")
    text_split_by_line_break = input_file.split("\n\n")
    file_parser
  end

  def file_parser(text_split_by_line_break)
    text_split_by_line_break.each do |text|
      if text.chars.starts_with?("#")
        converted_text << header_converter
      elsif text.chars.starts_with?("**")
        converted_text << bold_converter
      elsif text.chars.starts_with?("1")
        converted_text << ordered_list_converter
      elsif text.chars.starts_with?("*")
        converted_text << unordered_list_converter
      else
        converted_text << paragraph_converter
      end # need to pass converted_text through formatting
    end
    create_and_package_output_file
  end

  # text1 = header_converter(text_split_by_line_break)
  # text2 = paragraph_converter(text1)
  # text3 = bold_converter(text2)
  # text4 = list_converter(text3)
  # text5 = type_of_list_converter(text4)
  # text6 = italics_converter(text5)
  # text7 = bold_converter(text6)
  # converted_text = ampersand_converter(text7)

  def create_and_package_output_file(converted_text)
    output_file = WriteFile.new.output_file(converted_text)
    puts "> Converted #{input_file} (#{input_file.lines.length} lines) to #{output_file} (#{output_file.lines.length} lines)."
  end

end
