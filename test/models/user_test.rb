require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "full_name returns the capitalized first name and last name" do
    user = User.new(first_name: "victor", last_name: "quercize")
    assert_equal "Victor Quercize", user.full_name
  end
end
