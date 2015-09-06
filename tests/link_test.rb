require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './link'

class LinkTest < Minitest::Test

  def test_it_exists
    assert LinkTest.new('[an example](http://example.com/ "Title"')
  end

  def test_link_with_title
    skip
    text = Link.new('[an example](http://example.com/ "Title")')
    assert_equal '<a href="http://example.com/" title="Title"> an example</a>', text.html_version
  end

  def test_link_without_title
    skip
    text = Link.new('[This link](http://example.net/)')
    assert_equal '<a href="http://example.net/">This link</a>', text.html_version
  end

end
