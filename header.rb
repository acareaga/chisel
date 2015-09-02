class Header

  def initialize(string)
    true
  end

  def h1(string)
    ending = " </h1>"
    @string = string.gsub!("##", "<h1>")
    @string + ending
  end

  def h2(string)
    ending = " </h2>"
    @string = string.gsub!("##", "<h2>")
    @string + ending
  end

  def h3(string)
    ending = " </h3>"
    @string = string.gsub!("##", "<h3>")
    @string + ending
  end

end
