require "test_helper"

class RandomProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @random_product = random_products(:one)
  end

  test "should get index" do
    get random_products_url
    assert_response :success
  end

  test "should get new" do
    get new_random_product_url
    assert_response :success
  end

  test "should create random_product" do
    assert_difference("RandomProduct.count") do
      post random_products_url, params: { random_product: {  } }
    end

    assert_redirected_to random_product_url(RandomProduct.last)
  end

  test "should show random_product" do
    get random_product_url(@random_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_random_product_url(@random_product)
    assert_response :success
  end

  test "should update random_product" do
    patch random_product_url(@random_product), params: { random_product: {  } }
    assert_redirected_to random_product_url(@random_product)
  end

  test "should destroy random_product" do
    assert_difference("RandomProduct.count", -1) do
      delete random_product_url(@random_product)
    end

    assert_redirected_to random_products_url
  end
end
