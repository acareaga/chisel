class Link

  attr_reader :text, :html_version

  def initialize(text)
    @text = text
    @html_version = link_converter
  end

  def link_converter
    text.each_with_index do |element|
      element.split('"', '"')
    middle_text = text.strip
    "<a href=#{url} title=#{title}>#{middle_text}</a>"
    end.join("")
  end

  def url_converter
    text.split("\n").map do |url|
      url = text.split(" ", "/")[1]
    end
  end

  def attribute_converter
    text.split("\n").map do |attribute|
       attribute.split(" ", "/")
    end
  end

  def title_converter
    text.split("\n").map do |title|
      title.split(" ", "/")
    end
  end

end
