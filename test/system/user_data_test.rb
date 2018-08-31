require "application_system_test_case"

class UserDataTest < ApplicationSystemTestCase
  setup do
    @user_datum = user_data(:one)
  end

  test "visiting the index" do
    visit user_data_url
    assert_selector "h1", text: "User Data"
  end

  test "creating a User datum" do
    visit user_data_url
    click_on "New User Datum"

    fill_in "Email", with: @user_datum.email
    fill_in "Fname", with: @user_datum.fname
    fill_in "Lname", with: @user_datum.lname
    fill_in "Mobile", with: @user_datum.mobile
    click_on "Create User datum"

    assert_text "User datum was successfully created"
    click_on "Back"
  end

  test "updating a User datum" do
    visit user_data_url
    click_on "Edit", match: :first

    fill_in "Email", with: @user_datum.email
    fill_in "Fname", with: @user_datum.fname
    fill_in "Lname", with: @user_datum.lname
    fill_in "Mobile", with: @user_datum.mobile
    click_on "Update User datum"

    assert_text "User datum was successfully updated"
    click_on "Back"
  end

  test "destroying a User datum" do
    visit user_data_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User datum was successfully destroyed"
  end
end
