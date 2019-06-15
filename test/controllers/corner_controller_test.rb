require 'test_helper'

class CornerControllerTest < ActionDispatch::IntegrationTest
  test "should get The" do
    get corner_The_url
    assert_response :success
  end

  test "should get Corner" do
    get corner_Corner_url
    assert_response :success
  end

end
