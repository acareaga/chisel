require 'pry'

class Link

  attr_reader :text, :html_version

  def initialize(text)
    @text = text
    @html_version = link_converter
  end

  def link_converter
    url = '"http://google.com"' # need double qoutes on url and title
    title = '"Google"'
    middle_text = text.delete("#").strip
    "<a href=#{url} title=#{title}>#{middle_text}</a>"
  end

end
