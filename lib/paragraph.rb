require 'pry'

class Paragraph

  attr_reader :text, :html_version

  def initialize(text)
    @text = text
    @html_version = paragraph_converter
  end

  def paragraph_converter
    middle_text = text.strip
    "<p>\n  #{middle_text}\n</p>\n"
  end

end
