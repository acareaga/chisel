require 'pry'

class Paragraph

  attr_accessor :text
  attr_accessor :html_version

  def initialize(text)
    @html_version = paragraph_converter(text)
    @text = text
  end

  def paragraph_converter(text)
    html_version = "<p>#{text}</p>"
  end

end

# characters = text.chars
#text.map do |syntax|
  # syntax.insert(0, "<p>").insert(-1, "</p>")
# html_version #html_version =  .join
