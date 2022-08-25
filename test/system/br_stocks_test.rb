require "application_system_test_case"

class BrStocksTest < ApplicationSystemTestCase
  setup do
    @br_stock = br_stocks(:one)
  end

  test "visiting the index" do
    visit br_stocks_url
    assert_selector "h1", text: "Br stocks"
  end

  test "should create br stock" do
    visit br_stocks_url
    click_on "New br stock"

    fill_in "Price", with: @br_stock.price
    fill_in "Ticker", with: @br_stock.ticker
    click_on "Create Br stock"

    assert_text "Br stock was successfully created"
    click_on "Back"
  end

  test "should update Br stock" do
    visit br_stock_url(@br_stock)
    click_on "Edit this br stock", match: :first

    fill_in "Price", with: @br_stock.price
    fill_in "Ticker", with: @br_stock.ticker
    click_on "Update Br stock"

    assert_text "Br stock was successfully updated"
    click_on "Back"
  end

  test "should destroy Br stock" do
    visit br_stock_url(@br_stock)
    click_on "Destroy this br stock", match: :first

    assert_text "Br stock was successfully destroyed"
  end
end
