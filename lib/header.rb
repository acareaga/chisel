class Header

  attr_reader :text, :html_version

  def initialize(text)
    @text = text
    @html_version = header_converter
  end

  def header_converter
    header_level = text.to_s.count("#")
    middle_text = text.delete("#").strip
    "<h#{header_level}>#{middle_text}</h#{header_level}>\n"
  end

end
