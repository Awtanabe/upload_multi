require 'test_helper'

class PrototypesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get prototypes_new_url
    assert_response :success
  end

end
