require 'pry'

class Formatting

  def italics_converter
    # convert *asdf* to <em>asdf</em>
  end

  def bold_converter
    # convert **asdf** to <strong>asdf</strong>
  end

  def ampersand_converter
    # convert & to &amp;
  end

end






# def header_converter(text)
#   header_level = text.to_s.count "#"
#   characters = text.chars
#   html_header = characters.each do |syntax|
#     syntax.gsub!("#", "<h#{header_level}>")
#   end
#   ending = "</h#{header_level}>"
#   html_version = html_header.join + ending
#
# end
#
# end
