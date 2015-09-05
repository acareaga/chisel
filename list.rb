# Test list converts to unordered list (bullets)
# Test list converts to ordered list (numbered)
# Test UL converts within a paragraph of text
# Test OL converts within a paragraph of text

# need to detect ordered lists range(1..9)
require 'pry'

class List

  attr_reader :text
  attr_reader :html_version

  def initialize(text)
    @html_version = list_converter(text)
  end

  def list_converter(text)
    number = [1..9]
    middle_text = text.delete("*").delete("#{number}.").lstrip.rstrip
    html_version = "<li>#{middle_text}</li>\n"
  end

  # if starts_with?("*") = unordered_list
  # if starts_with?(1..9) = ordered_list
  # each list_element with index do

  def ordered_list_converter(text)
    # convert numbers 1. Sushi to <ol> "/n" <li>Sushi</li> "/n" </ol>
  end

end
