require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'chisel_parser'

class ChiselParserTest < Minitest::Test

  # def test_input_file
  #   assert ChiselParser(input_file)
  # end

  def test_it_exists
    assert_respond_to ChiselParser.new(input_file)
  end

end



#   parser = ChiselParser.new(<<TEXT)
#
# # My Life in Desserts
#
# ## Chapter 1: The Beginning
#
# "You just *have* to try the cheesecake," he said. "Ever since it appeared in
# **Food & Wine** this place has been packed every night."
# TEXT
#
#   converted_text = parser.start_parsing
#
#   html = <<HTML
# <h1>My Life in Desserts</h1>
#
# <h2>Chapter 1: The Beginning</h2>
#
# <p>
# "You just <em>have</em> to try the cheesecake," he said. "Ever since it appeared in
# <strong>Food &amp; Wine</strong> this place has been packed every night."
# </p>
# HTML
#
#   assert_equal html, converted_text
