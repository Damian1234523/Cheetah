require 'test_helper'

class TesthomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get testhome_home_url
    assert_response :redirect
    assert true
  end


end
