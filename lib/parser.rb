require_relative 'formatting'
require_relative 'header'
require_relative 'list'
require_relative 'paragraph'
require 'pry'

class Parser

  attr_accessor :input_file, :my_output, :text, :parsed

  def initialize(input_file)
    @input_file = input_file
    @my_output = my_output
    @text = File.open(input_file).read.split("\n\n")
    @parsed = file_parse_elements
  end

  def file_parse_elements
    text.map do |chunk|
    if header?(chunk)
      Header.new(chunk).header_converter
    elsif list?(chunk)
      List.new(chunk).list_converter
    else
      Paragraph.new(chunk).paragraph_converter
    end
    end
  end

  def file_parse_style
    parsed.map do |chunk|
    if formatting?(chunk)
      Formatting.new(chunk).formatting_converter
    # elsif image?(chunk)
    #   Image.new(chunk).image_converter
    # elsif link?(chunk)
    #   Link.new(chunk).image_converter
    else
      chunk
    end
    end.join("\n")
  end

  def package_output_file
    output_file = File.open("my_output.html", 'w')
    output_file.write(file_parse_style)
    puts "Converted #{input_file} (#{input_file.size} lines) to my_output.html (#{output_file.size} lines)."
  end

  def formatting?(chunk)
    chunk.include?("**") || chunk.include?("&") || chunk.include?("*")
  end

  def header?(chunk)
    chunk.start_with?("#")
  end

  def image?(chunk)
    chunk.include?("![")
  end

  def link?(chunk)
    chunk.include?("[")
  end

  def list?(chunk)
    chunk.start_with?("1.") || chunk.start_with?("*")
  end

end
