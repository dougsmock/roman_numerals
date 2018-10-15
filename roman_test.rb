require "minitest/autorun"
require_relative "roman.rb"

class Roman < Minitest::Test

  def test_for_string
    assert_equal(String, romanize(0).class)
  end

  def test_1_returns_I
    assert_equal("I", romanize(1))
  end

  def test_3_returns_III
    assert_equal("III", romanize(3))
  end

  def test_4_returns_IV
    assert_equal("IV", romanize(4))
  end

end