require 'pry'

class Links

  attr_reader :text
  attr_reader :html_version

  def initialize(text)
    @html_version = link_converter(text)
  end

  def link_converter(text)
    url = '"http://google.com"' # need double qoutes on url and title
    title = '"Google"'
    middle_text = text.delete("#").lstrip.rstrip
    html_version = "<a href=#{url} title=#{title}>
    #{middle_text}</a>"
  end

end
