require 'spec_helper'

feature 'User Logging In' do
  before do
    visit root_path
  end

  scenario "No User Registration Option" do
    click_link "Login"

    expect(page).to_not have_content("Sign up")
  end

  scenario "Logging in" do
    click_link "Login"
    user_login

    expect(page).to have_content("Signed in successfully.")
  end

  scenario "Logging out" do
    click_link "Login"
    user_login

    click_link "Logout"
    expect(page).to have_content("Signed out successfully.")
  end
end
