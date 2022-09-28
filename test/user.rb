require 'minitest/autorun'
require_relative '../lib/user/'

class UserTest < Minitest::Test
  def setup
    @user = User.new
  end
  
  def test_hello
    assert_equal 'Hello World!', @user.hello
  end
end
