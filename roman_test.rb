require "minitest/autorun"
require_relative "roman.rb"

class Roman < Minitest::Test

  def test_assert_that_I_to_hash
    assert_equal("I", Hash)
  end


end