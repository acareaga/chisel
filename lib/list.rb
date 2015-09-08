class List

  attr_reader :text, :html_version

  def initialize(text)
    @text = text
    @html_version = list_converter
  end

  def list_converter
    if ordered_list?
      ordered_list
    else
      unordered_list
    end
  end

  def ordered_list?
    text.start_with?("1.")
  end

  def ordered_list
    "<ol>\n#{item_converter}</ol>\n"
  end

  def unordered_list
    "<ul>\n#{item_converter}</ul>\n"
  end

  def item_converter
    text.split("\n").map do |item|
      middle_text = item.split(" ")[1..-1].join(" ").strip
      "  <li>#{middle_text}</li>\n"
    end.join("")
  end

end
