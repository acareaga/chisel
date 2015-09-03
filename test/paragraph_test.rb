require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'paragraph'

class ParagraphTest < Minitest::Test

  def test_if_text_has_paragraphs
    assert ParagraphTest.new("Test markdown sentece.")
  end

end
