require "application_system_test_case"

class RandomProductsTest < ApplicationSystemTestCase
  setup do
    @random_product = random_products(:one)
  end

  test "visiting the index" do
    visit random_products_url
    assert_selector "h1", text: "Random products"
  end

  test "should create random product" do
    visit random_products_url
    click_on "New random product"

    click_on "Create Random product"

    assert_text "Random product was successfully created"
    click_on "Back"
  end

  test "should update Random product" do
    visit random_product_url(@random_product)
    click_on "Edit this random product", match: :first

    click_on "Update Random product"

    assert_text "Random product was successfully updated"
    click_on "Back"
  end

  test "should destroy Random product" do
    visit random_product_url(@random_product)
    click_on "Destroy this random product", match: :first

    assert_text "Random product was successfully destroyed"
  end
end
