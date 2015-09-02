require 'pry'

class Paragraph

  attr_reader :text
  attr_reader :html_version

  def initialize(text)
    @html_version = paragraph(text)
  end

  def paragraph(text)
    

  end

end
