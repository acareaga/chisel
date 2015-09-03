require 'pry'
require_relative 'chisel_parser'

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

parser = ChiselParser.new(ARGV)
parser.????
puts "Converted #{input_file_name} (#{input_lines}) to #{output_file_name} (#{output_lines})"
