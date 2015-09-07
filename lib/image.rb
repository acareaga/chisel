require 'pry'

class Image

  attr_reader :text, :html_version

  def initialize(text)
    @text = text
    @html_version = image_converter
  end

![alt text](https://github.com/ "Logo Title")

  def image_converter
    url = text.split("(", "/")[1]
    title = text.split('"', '"')
    attribute = text.delete("#").strip
    "<img src=#{url} alt=#{attribute} title=#{title}>"
  end

end
