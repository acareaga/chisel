require 'pry'

class Paragraph

  attr_accessor :text
  attr_accessor :html_version

  def initialize(text)
    @html_version = paragraph_converter(text)
  end

  def paragraph_converter(text)
    middle_text = text.lstrip.rstrip
    html_version = "<p>#{middle_text}</p>\n"
  end

end

# characters = text.chars
#text.map do |syntax|
  # syntax.insert(0, "<p>").insert(-1, "</p>")
# html_version #html_version =  .join
