require 'pry'

class Header

  attr_reader :text
  attr_reader :html_version

  def initialize(text)
    @html_version = h1(text)
  end

  def header_converter(text)
    text = "##### Test Header"
    header_level = text.to_s.count "#"
    ending = "</h#{header_level}>"

    html_header = text each do |syntax|
      syntax.gsub!("#", "<h#{header_level}>")
    end
    html_header[0] + ending
  end

end
