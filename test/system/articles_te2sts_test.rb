require "application_system_test_case"

class ArticlesTe2stsTest < ApplicationSystemTestCase
  setup do
    @articles_te2st = articles_te2sts(:one)
  end

  test "visiting the index" do
    visit articles_te2sts_url
    assert_selector "h1", text: "Articles te2sts"
  end

  test "should create articles te2st" do
    visit articles_te2sts_url
    click_on "New articles te2st"

    fill_in "Name", with: @articles_te2st.name
    click_on "Create Articles te2st"

    assert_text "Articles te2st was successfully created"
    click_on "Back"
  end

  test "should update Articles te2st" do
    visit articles_te2st_url(@articles_te2st)
    click_on "Edit this articles te2st", match: :first

    fill_in "Name", with: @articles_te2st.name
    click_on "Update Articles te2st"

    assert_text "Articles te2st was successfully updated"
    click_on "Back"
  end

  test "should destroy Articles te2st" do
    visit articles_te2st_url(@articles_te2st)
    click_on "Destroy this articles te2st", match: :first

    assert_text "Articles te2st was successfully destroyed"
  end
end
