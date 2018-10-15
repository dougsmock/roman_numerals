require "minitest/autorun"
require_relative "roman.rb"

class Roman < Minitest::Test

  def test_for_string
    assert_equal(String, romanize(0).class)
  end

  def test_1_returns_I
    assert_equal("I", romanize(1))
  end

end