require "application_system_test_case"

class BrReitsTest < ApplicationSystemTestCase
  setup do
    @br_reit = br_reits(:one)
  end

  test "visiting the index" do
    visit br_reits_url
    assert_selector "h1", text: "Br reits"
  end

  test "should create br reit" do
    visit br_reits_url
    click_on "New br reit"

    fill_in "Price", with: @br_reit.price
    fill_in "Ticker", with: @br_reit.ticker
    click_on "Create Br reit"

    assert_text "Br reit was successfully created"
    click_on "Back"
  end

  test "should update Br reit" do
    visit br_reit_url(@br_reit)
    click_on "Edit this br reit", match: :first

    fill_in "Price", with: @br_reit.price
    fill_in "Ticker", with: @br_reit.ticker
    click_on "Update Br reit"

    assert_text "Br reit was successfully updated"
    click_on "Back"
  end

  test "should destroy Br reit" do
    visit br_reit_url(@br_reit)
    click_on "Destroy this br reit", match: :first

    assert_text "Br reit was successfully destroyed"
  end
end
