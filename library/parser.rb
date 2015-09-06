require_relative 'paragraph'
require 'pry'

class Parser

  attr_accessor :input_file, :output_file, :text

  def initialize(input_file)
    @input_file = input_file
    @output_file = output_file
    @text = text
  end

  def file_parser
    text = File.read(input_file).split("\n\n").file_parser
      if paragraph?
        paragraph_converter
      end
    end.join("\n\n").package_output_file
  end

  def package_output_file
    output_file = WriteFile.new.output_file(converted_text)
    puts "Converted #{input_file} (#{input_file.size} lines) to #{output_file} (#{output_file.size} lines)."
  end

  def paragraph?
    text.start_with?('""')
  end

end
