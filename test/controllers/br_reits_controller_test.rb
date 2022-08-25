require "test_helper"

class BrReitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @br_reit = br_reits(:one)
  end

  test "should get index" do
    get br_reits_url
    assert_response :success
  end

  test "should get new" do
    get new_br_reit_url
    assert_response :success
  end

  test "should create br_reit" do
    assert_difference("BrReit.count") do
      post br_reits_url, params: { br_reit: { price: @br_reit.price, ticker: @br_reit.ticker } }
    end

    assert_redirected_to br_reit_url(BrReit.last)
  end

  test "should show br_reit" do
    get br_reit_url(@br_reit)
    assert_response :success
  end

  test "should get edit" do
    get edit_br_reit_url(@br_reit)
    assert_response :success
  end

  test "should update br_reit" do
    patch br_reit_url(@br_reit), params: { br_reit: { price: @br_reit.price, ticker: @br_reit.ticker } }
    assert_redirected_to br_reit_url(@br_reit)
  end

  test "should destroy br_reit" do
    assert_difference("BrReit.count", -1) do
      delete br_reit_url(@br_reit)
    end

    assert_redirected_to br_reits_url
  end
end
