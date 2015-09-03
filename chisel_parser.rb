require_relative 'paragraph'
require_relative 'header'
require 'pry'

# Parser
# ruby chisel.rb input.markdown output.html
# chisel read input.markdown
# split input.markdown in each element
# save as variable
# split each line into string

# recognize if string includes certain characters
# if it includes character, substitute markdown elements with html
# leave "inside" text intact
# continue evaluating the string
# loop back to top, if end continue to next string

# chisel write output.html

ARGV
input_file = File.open(ARGV[0], "r")
puts input_file.read
class ChiselParser

  def initialize(array_of_input_and_output)
    Chisel.new
  end

  def valid_file_type
    # validate that the input file works before continuing
  end

  def start_parsing(text) # what needs to happen to text
    text_split_into_chunks = text.split("/n/n") # lines.map(&:chomp) # split text by line
    # pass into ...

    text1 = paragraph_converter(text_split_into_chunks)
    text2 = header_converter(text1)
    text3 = list_converter(text2)

    # paragraph_converter
    # header_converter
    # list converter
  end

end
