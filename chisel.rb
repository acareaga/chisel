require './library/parser'

input_file = ARGV[0]
Parser.new(input_file).package_output_file
