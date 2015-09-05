require 'pry'

class List

  attr_reader :text
  attr_reader :html_version

  def initialize(text)
    @html_version = list_converter(text)
  end

  def list_converter(text)
    number = [1..9]
    middle_text = text.delete("*").delete("#{number}.").lstrip.rstrip
    html_version = "<li>#{middle_text}</li>\n"
  end

  def type_of_list_converter(text)
    number = [1..9]
    if text.starts_with?("#{number}")
      text.prepend("<ol>\n").append("</ol>\n")
    else
      text.prepend("<ul>\n").append("</ul>\n")
  end

end
