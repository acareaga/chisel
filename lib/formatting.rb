class Formatting

  attr_reader :text, :html_version

  def initialize(text)
    @text = text
    @html_version = formatting_converter
  end

  def formatting_converter
    if ampersand?
      ampersand_converter
    elsif bold?
      bold_converter
    else
      italics_converter
    end
  end

  def ampersand?
    text.include?("&")
  end

  def bold?
    text.include?("**")
  end

  def ampersand_converter
    text.gsub("&", "&amp;")
  end

  def bold_converter
    middle_text = text.delete("*").strip
    "<strong>#{middle_text}</strong>"
  end

  def italics_converter
    middle_text = text.delete("*").delete("_").strip
    "<em>#{middle_text}</em>"
  end

end
