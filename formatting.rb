require 'pry'

class Formatting

  def initialize(text)
    @html_version = italics_converter(text)
    @html_version = bold_converter(text)
    @html_version = ampersand_converter(text)
  end

  def italics_converter(text)
    middle_text = text.delete("*").delete("_").lstrip.rstrip
    html_version = "<em>#{middle_text}</em>"
  end

  def bold_converter(text)
    middle_text = text.delete("*").lstrip.rstrip
    html_version = "<strong>#{middle_text}</strong>"
  end

  def ampersand_converter(text)
    text.gsub!("&", "&amp;")
  end

end
