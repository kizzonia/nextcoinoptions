require "application_system_test_case"

class TradesTest < ApplicationSystemTestCase
  setup do
    @trade = trades(:one)
  end

  test "visiting the index" do
    visit trades_url
    assert_selector "h1", text: "Trades"
  end

  test "creating a Trade" do
    visit trades_url
    click_on "New Trade"

    fill_in "Currency", with: @trade.currency
    fill_in "Deposit", with: @trade.deposit
    fill_in "Entry", with: @trade.entry
    fill_in "Expiration", with: @trade.expiration
    fill_in "Rate", with: @trade.rate
    fill_in "Return", with: @trade.return
    fill_in "Status", with: @trade.status
    fill_in "Tradetype", with: @trade.tradetype
    fill_in "User", with: @trade.user_id
    click_on "Create Trade"

    assert_text "Trade was successfully created"
    click_on "Back"
  end

  test "updating a Trade" do
    visit trades_url
    click_on "Edit", match: :first

    fill_in "Currency", with: @trade.currency
    fill_in "Deposit", with: @trade.deposit
    fill_in "Entry", with: @trade.entry
    fill_in "Expiration", with: @trade.expiration
    fill_in "Rate", with: @trade.rate
    fill_in "Return", with: @trade.return
    fill_in "Status", with: @trade.status
    fill_in "Tradetype", with: @trade.tradetype
    fill_in "User", with: @trade.user_id
    click_on "Update Trade"

    assert_text "Trade was successfully updated"
    click_on "Back"
  end

  test "destroying a Trade" do
    visit trades_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trade was successfully destroyed"
  end
end
