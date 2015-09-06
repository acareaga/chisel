require './chisel_parser'

input_file = File.open(ARGV[0], "r")
ChiselParser.new(input_file)
