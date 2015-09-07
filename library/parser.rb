require_relative 'header'
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
    else
      Paragraph.new(chunk).paragraph_converter
    end
    end.join("\n\n")
  end

  def package_output_file
    output_file = File.open("my_output.html", 'w')
    output_file.write(file_parser)
    puts "Converted #{input_file} (#{input_file.size} lines) to my_output.html (#{output_file} lines)."
  end

  def header?(chunk)
    chunk.start_with?("#")
  end

end
