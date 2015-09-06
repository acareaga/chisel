require 'pry'

class List

  attr_reader :text
  attr_reader :html_version

  def initialize(text)
    @html_version = item_converter(text)
  end

  # def list_converter(text)
  #   number = [1..9]
  #   if text.starts_with?("#{number}")
  #     ordered_list
  #   else
  #     unordered_list
  #   end
  # end
  #
  # def ordered_list(text)
  #   text.each do |item|
  #     html_version = item.item_converter
  #   end
  #   html_version.unshift("<ol>\n").push("</ol>\n").join("")
  # end
  #
  # def unordered_list(text)
  #   text.each do |item|
  #     html_version = item.item_converter
  #   end
  #   html_version.unshift("<ul>\n").push("</ul>\n").join("")
  # end

  def item_converter(text)
    number = [1..9]
    middle_text = text.delete("*").delete("#{number}.").lstrip.rstrip
    html_version = "<li>#{middle_text}</li>\n"
  end

end
