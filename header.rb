require 'pry'

class Header

  attr_reader :text
  attr_reader :html_version

  def initialize(text)
    @html_version = h1(text)
  end

  def h1(text)
    text = ["# Test Header"]
    ending = "</h1>"
    html_header = text.map do |syntax|
      syntax.gsub!("#", "<h1>")
    end
    html_header[0] + ending
  end

  # def h2(string)
  #   ending = " </h2>"
  #   @string = string.gsub!("##", "<h2>")
  #   @string + ending
  # end
  #
  # def h3(string)
  #   ending = " </h3>"
  #   @string = string.gsub!("##", "<h3>")
  #   @string + ending
  # end

end

h5
h4
h3
h2
h1
