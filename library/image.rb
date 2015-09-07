require 'pry'

class Image

  attr_reader :text, :html_version

  def initialize(text)
    @text = text
    @html_version = image_converter
  end

  def image_converter
    url = '"http://google.com"' # need double qoutes on url and title
    title = "Google"
    attribute = text.delete("#").strip
    "<img src=#{url} alt=#{attribute} title=#{title}>"
  end

end
