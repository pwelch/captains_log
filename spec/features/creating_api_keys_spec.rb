require 'spec_helper'

feature 'Creating API Keys' do
  before do
    visit root_path

    user_login
    click_link "API Access"
  end

  scenario "Creating an API Key" do
    click_link "Add API Key"
    fill_in "api_key_description", with: "Test API Key"
    click_button "Create Key"

    expect(page).to have_content("Test API Key")
  end

  scenario "Creating an API Key without valid attributes fails" do
    click_link "Add API Key"
    click_button "Create Key"

    expect(page).to have_content("Description can't be blank")
  end
end
