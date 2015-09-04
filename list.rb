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
    @html_version = header_converter(text)
  end

  def unordered_list_converter(text)
    # convert bullet * Sushi to <ul> "/n" <li>Sushi</li> "/n" </ul>
  end

  def ordered_list_converter(text)
    # convert numbers 1. Sushi to <ol> "/n" <li>Sushi</li> "/n" </ol>
  end

end
