require 'spec_helper'

feature 'Searching Entries' do
  before do
    FactoryGirl.create(:event, entry: "Foo bar")
    FactoryGirl.create(:event, entry: "Test Baz")

    visit root_path
    user_login
    click_link "Events"
    click_link "Show Events"
  end

  scenario "Searching for entry text that exists" do
    fill_in "query", with: "bar"
    click_button "Search"

    expect(page).to have_content("Foo bar")
    expect(page).to_not have_content("Test Baz")
  end
end
