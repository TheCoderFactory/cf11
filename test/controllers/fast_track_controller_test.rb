require 'test_helper'

class FastTrackControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
