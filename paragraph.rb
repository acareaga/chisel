require 'pry'

class Paragraph

  attr_reader :text
  attr_reader :html_version

  def initialize(text)
    @html_version = paragraph(text)
  end

  # def paragraph_converter(text)
  #   text = "This is the first line of the paragraph. \nThis is the second line of the same paragraph."
  #   html_paragraph = text map do |syntax|
  #     syntax.insert(0, "<p>").insert(-1, "</p>")
  #   end
  # end

end
