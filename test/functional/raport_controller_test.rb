require 'test_helper'

class RaportControllerTest < ActionController::TestCase
  test "should get monthly" do
    get :monthly
    assert_response :success
  end

end
