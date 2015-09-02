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

require_relative 'chisel_parser'
require 'chisel_parser'

parser = ChiselParser.new(ARGV)
parser.????
puts "Converted #{input_file_name} (#{input_lines}) to #{output_file_name} (#{output_lines})"






# class Header
#
#   def initialize(string)
#     true
#   end

  # def h1(string)
  #   ending = " </h1>"
  #   @string = string.gsub!("##", "<h1>")
  #   @string + ending
  # end
  #
  # def h2(string)
  #   ending = " </h2>"
  #   @string = string.gsub!("##", "<h2>")
  #   @string + ending
  # end
  #
  # def h3(string)
  #   ending = " </h3>"
  #   @string = string.gsub!("##", "<h3>")
  #   @string + ending
  # end

# end
