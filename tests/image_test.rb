require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../library/image'

class ImageTest < Minitest::Test

  def test_it_exists
    assert ImageTest.new('![Alt text](/path/to/img.jpg "Optional title")')
  end

  def test_image_with_title
    skip
    text = Image.new('![Alt text](/path/to/img.jpg "Optional title")')
    assert_equal '<img src="/path/to/img.jpg" alt="Alt text" title="Optional title">', text.html_version
  end

  def test_image_without_title
    skip
    text = Image.new('![Alt text](/path/to/img.jpg)')
    assert_equal '<img src="/path/to/img.jpg" alt="Alt text">', text.html_version
  end

end
