require "test_helper"

class ArticlesTe2stsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @articles_te2st = articles_te2sts(:one)
  end

  test "should get index" do
    get articles_te2sts_url
    assert_response :success
  end

  test "should get new" do
    get new_articles_te2st_url
    assert_response :success
  end

  test "should create articles_te2st" do
    assert_difference("ArticlesTe2st.count") do
      post articles_te2sts_url, params: { articles_te2st: { name: @articles_te2st.name } }
    end

    assert_redirected_to articles_te2st_url(ArticlesTe2st.last)
  end

  test "should show articles_te2st" do
    get articles_te2st_url(@articles_te2st)
    assert_response :success
  end

  test "should get edit" do
    get edit_articles_te2st_url(@articles_te2st)
    assert_response :success
  end

  test "should update articles_te2st" do
    patch articles_te2st_url(@articles_te2st), params: { articles_te2st: { name: @articles_te2st.name } }
    assert_redirected_to articles_te2st_url(@articles_te2st)
  end

  test "should destroy articles_te2st" do
    assert_difference("ArticlesTe2st.count", -1) do
      delete articles_te2st_url(@articles_te2st)
    end

    assert_redirected_to articles_te2sts_url
  end
end
