require "application_system_test_case"

class TwetsTest < ApplicationSystemTestCase
  setup do
    @twet = twets(:one)
  end

  test "visiting the index" do
    visit twets_url
    assert_selector "h1", text: "Twets"
  end

  test "creating a Twet" do
    visit twets_url
    click_on "New Twet"

    fill_in "Twet", with: @twet.twet
    click_on "Create Twet"

    assert_text "Twet was successfully created"
    click_on "Back"
  end

  test "updating a Twet" do
    visit twets_url
    click_on "Edit", match: :first

    fill_in "Twet", with: @twet.twet
    click_on "Update Twet"

    assert_text "Twet was successfully updated"
    click_on "Back"
  end

  test "destroying a Twet" do
    visit twets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Twet was successfully destroyed"
  end
end
