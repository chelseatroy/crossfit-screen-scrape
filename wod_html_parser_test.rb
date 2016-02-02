require 'minitest/autorun'
require './wod_html_parser'
#hi

class WodHtmlParserTest < Minitest::Unit::TestCase
  def test_foo
    results = WodHtmlParser.parse open('./chelseas_prs.html')

    # assert_equal results.size, 2
    assert_equal results[0], { component: "Back Squat", result: "1 x 1 @ 195 lbs"}
    assert_equal results[1], { component: 'Push Press', result: '3 x 3 @ 95 lbs' }
    assert_equal results[2], { component: 'Push Jerk', result: '2 x 3 @ 95 lbs' }
  end
end
