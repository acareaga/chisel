require 'pry'

class Header

  attr_reader :text
  attr_reader :html_version

  def initialize(text)
    @html_version = header_converter(text)
  end

  def header_converter(text)
    header_level = text.to_s.count "#"
    middle_text = text.delete("#").lstrip.rstrip
    html_version = "<h#{header_level}>#{middle_text}</h#{header_level}>\n"
  end

end
