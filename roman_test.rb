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

  def test_5_returns_V
    assert_equal("V", romanize(5))
  end

  def test_9_returns_IX
    assert_equal("IX", romanize(9))
  end

  def test_10_returns_X
    assert_equal("X", romanize(10))
  end

  def test_40_returns_XL
    assert_equal("XL", romanize(40))
  end

  def test_50_returns_L
    assert_equal("L", romanize(50))
  end

  def test_90_returns_L
    assert_equal("XC", romanize(90))
  end

  def test_100_returns_L
    assert_equal("C", romanize(100))
  end

  def test_500_returns_D
    assert_equal("D", romanize(500))
  end

  def test_900_returns_CM
    assert_equal("CM", romanize(900))
  end

  def test_1000_returns_M
    assert_equal("M", romanize(1000))
  end

  def test_1999
    assert_equal("MCMXCIX", romanize(1999))
  end

  def test_2018
    assert_equal("MMXVIII", romanize(2018))
  end

  def test_666
    assert_equal("DCLXVI", romanize(666))
  end

  def test_400
    assert_equal("CD", romanize(400))
  end

  def test_something
    assert_equal(Integer, arabic("").class)
  end

  def test_I_returns_1
    assert_equal(1, arabic("I"))
  end

  def test_III_returns_3
    assert_equal(3, arabic("III"))
  end

  def test_IV_returns_4
    assert_equal(4, arabic("IV"))
  end




end