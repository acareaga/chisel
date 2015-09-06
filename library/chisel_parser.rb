require_relative 'paragraph'
require_relative 'header'
require_relative 'formatting'
require_relative 'list'
require_relative 'image'
require_relative 'link'
require 'pry'

input_file = File.open(ARGV[0], "r")
puts input_file.read

class ChiselParser

  attr_accessor :original_text, :converted_text

  def initialize(input_file)
    @input_file = input_file
    @original_text = text
    @converted_text = converted_text
  end

  def read_and_split_input_file(input_file)
    input_file = File.read
    text_split_by_line_break = input_file.split("\n\n").file_parser
  end

  def file_parser(text_split_by_line_break)
    converted_text = []
    text_split_by_line_break.each do |chunk|
      if chunk.starts_with?("#")
        converted_text << chunk.header_converter
      # elsif chunk.starts_with?("1" || "*")
      #   converted_text << text.list_converter
      # elsif chunk.chars.include?("[")
      #   converted_text << chunk.list_converter
      # elsif chunk.chars.include?("&" || "_" || "**")
      #   converted_text << chunk.formatting_converter
      # else chunk.chars.include?('""')
      #   converted_text << chunk.paragraph_converter
      # end
    end
    converted_text.join("\n\n").create_and_package_output_file
  end

  def create_and_package_output_file(converted_text)
    output_file = WriteFile.new.output_file(converted_text)
    puts "Converted #{@input_file} (#{@input_file.lines.length} lines) to #{output_file} (#{output_file.lines.length} lines)."
  end

end
