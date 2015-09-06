require 'pry'

class Images

  def initialize(text)
    @html_version = image_converter(text)
  end

  def image_converter(text)
    url = '"http://google.com"' # need double qoutes on url and title
    attribute = # text.delete("#").lstrip.rstrip
    title = # optional
    html_version = "<img src=#{url} alt=#{attribute} title=#{title}>"
  end

end
