require 'pry'

class Paragraph

  attr_accessor :text
  attr_accessor :html_version

  def initialize(text)
    @text = text
    @html_version = paragraph_converter
  end

  def paragraph_converter
    middle_text = text.strip
    "<p>#{middle_text}</p>\n"
  end

end
