require 'test_helper'

class HappyControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "should get input" do
    get happy_input_url
    assert_response :success
  end

  test "should get output" do
    get happy_view_url
    assert_response :success
  end
end
