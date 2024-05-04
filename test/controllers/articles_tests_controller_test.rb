require "test_helper"

class ArticlesTestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @articles_test = articles_tests(:one)
  end

  test "should get index" do
    get articles_tests_url
    assert_response :success
  end

  test "should get new" do
    get new_articles_test_url
    assert_response :success
  end

  test "should create articles_test" do
    assert_difference("ArticlesTest.count") do
      post articles_tests_url, params: { articles_test: { description: @articles_test.description, title: @articles_test.title } }
    end

    assert_redirected_to articles_test_url(ArticlesTest.last)
  end

  test "should show articles_test" do
    get articles_test_url(@articles_test)
    assert_response :success
  end

  test "should get edit" do
    get edit_articles_test_url(@articles_test)
    assert_response :success
  end

  test "should update articles_test" do
    patch articles_test_url(@articles_test), params: { articles_test: { description: @articles_test.description, title: @articles_test.title } }
    assert_redirected_to articles_test_url(@articles_test)
  end

  test "should destroy articles_test" do
    assert_difference("ArticlesTest.count", -1) do
      delete articles_test_url(@articles_test)
    end

    assert_redirected_to articles_tests_url
  end
end
