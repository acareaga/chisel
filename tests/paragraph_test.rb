require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './paragraph'

class ParagraphTest < Minitest::Test

  def test_if_it_exists
    assert Paragraph.new("Test paragraph.\n")
  end

  def test_if_paragraph_converted
    text = Paragraph.new("Test Paragraph.\n")
    assert_equal "<p>Test Paragraph.</p>\n", text.html_version
  end

  def test_multiple_lines_of_text_without_new_line_characters
    text = Paragraph.new("You just have to try the cheesecake, he said. Ever since it appeared in Food & Wine this place has been packed every night.")
    assert_equal "<p>You just have to try the cheesecake, he said. Ever since it appeared in Food & Wine this place has been packed every night.</p>\n", text.html_version
  end

  def test_multiple_lines_of_text_with_new_line_characters
    text = Paragraph.new("You just have to try the cheesecake, he said. Ever since it appeared in Food & Wine this place has been packed every night.\n")
    assert_equal "<p>You just have to try the cheesecake, he said. Ever since it appeared in Food & Wine this place has been packed every night.</p>\n", text.html_version
  end

  def test_scope_of_paragraph_converter_with_markdown_characters
    text = Paragraph.new("You just *have* to try the _cheesecake_, he said. Ever since it appeared in **Food & Wine** this place has been packed every night.\n")
    assert_equal "<p>You just *have* to try the _cheesecake_, he said. Ever since it appeared in **Food & Wine** this place has been packed every night.</p>\n", text.html_version
  end

  def test_scope_of_paragraph_converter_with_html_characters
    text = Paragraph.new("You just <em>have</em> to try the cheesecake, he said. Ever since it appeared in <strong>Food & Wine</strong> this place has been packed every night.\n")
    assert_equal "<p>You just <em>have</em> to try the cheesecake, he said. Ever since it appeared in <strong>Food & Wine</strong> this place has been packed every night.</p>\n", text.html_version
  end

end
