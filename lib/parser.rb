require_relative 'formatting'
require_relative 'header'
require_relative 'list'
require_relative 'paragraph'
require 'pry'

class Parser

  attr_accessor :input_file, :my_output, :text

  def initialize(input_file)
    @input_file = input_file
    @my_output = my_output
    @text = File.open(input_file).read.split("\n\n")
  end

  def file_parser
    text.map do |chunk|
    if header?(chunk)
      Header.new(chunk).header_converter
    elsif list?(chunk)
      List.new(chunk).list_converter
    elsif formatting?(chunk)
      Formatting.new(chunk).formatting_converter
    # elsif image?(chunk)
    #   Image.new(chunk).image_converter
    # elsif link?(chunk)
    #   Link.new(chunk).link_converter
    else
      Paragraph.new(chunk).paragraph_converter
    end
  end.join("\n")
  end

  def package_output_file
    output_file = File.open("my_output.html", 'w')
    output_file.write(file_parser)
    puts "Converted #{input_file} (#{input_file.size} lines) to my_output.html (#{output_file.size} lines)."
  end

  def formatting?(unformatted_text)
    unformatted_text.include?("**") || unformatted_text.include?("&") || unformatted_text.include?("*")
  end

  def header?(chunk)
    chunk.start_with?("#")
  end

  # def image?(chunk)
  #   chunk.include?("![")
  # end
  #
  # def link?(chunk)
  #   chunk.include?("[")
  # end

  def list?(chunk)
    chunk.start_with?("1.") || chunk.start_with?("*")
  end

end
