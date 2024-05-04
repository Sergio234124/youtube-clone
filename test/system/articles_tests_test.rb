require "application_system_test_case"

class ArticlesTestsTest < ApplicationSystemTestCase
  setup do
    @articles_test = articles_tests(:one)
  end

  test "visiting the index" do
    visit articles_tests_url
    assert_selector "h1", text: "Articles tests"
  end

  test "should create articles test" do
    visit articles_tests_url
    click_on "New articles test"

    fill_in "Description", with: @articles_test.description
    fill_in "Title", with: @articles_test.title
    click_on "Create Articles test"

    assert_text "Articles test was successfully created"
    click_on "Back"
  end

  test "should update Articles test" do
    visit articles_test_url(@articles_test)
    click_on "Edit this articles test", match: :first

    fill_in "Description", with: @articles_test.description
    fill_in "Title", with: @articles_test.title
    click_on "Update Articles test"

    assert_text "Articles test was successfully updated"
    click_on "Back"
  end

  test "should destroy Articles test" do
    visit articles_test_url(@articles_test)
    click_on "Destroy this articles test", match: :first

    assert_text "Articles test was successfully destroyed"
  end
end
