require 'pry'

class Paragraph

  attr_accessor :text
  attr_accessor :html_version

  def initialize(text)
    @html_version = paragraph_converter(text)
  end

  def paragraph_converter(text)
    middle_text = text.strip
    html_version = "<p>#{middle_text}</p>\n"
  end

end
