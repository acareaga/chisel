class Image

  attr_reader :text, :html_version

  def initialize(text)
    @text = text
    @html_version = image_converter
  end

  def image_converter
    text.each_with_index do |element|
      element.split('"', '"')
    attribute = text.delete("#").strip
    "<img src=#{url} alt=#{attribute} title=#{title}>"
    end.join("")
  end

  def url_converter
    text.split("\n").map do |url|
      url.split("(", ")")
    end
  end

  def attribute_converter
    text.split("\n").map do |attribute|
      attribute.split("[", "]")
    end
  end

  def title_converter
    text.split("\n").map do |title|
      title.split('""', '""')
    end
  end

end
