require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "authentication" do
    assert users(:lewis).authenticate("password")
  end
end
