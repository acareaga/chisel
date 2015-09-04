require 'pry'

class Header

  attr_reader :text
  attr_reader :html_version

  def initialize(text)
    @html_version = header_converter(text)
  end

  def header_converter(text)
    header_level = text.to_s.count "#"

    characters = text.chars
    html_header = characters.each do |syntax|
      syntax.gsub!("#", "<h#{header_level}>")
    end
    ending = "</h#{header_level}>"
    html_version = html_header.join + ending
  end

end
