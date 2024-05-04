require "test_helper"

class LikesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get likes_create_url
    assert_response :success
  end

  test "should get destroylike_params" do
    get likes_destroylike_params_url
    assert_response :success
  end
end
