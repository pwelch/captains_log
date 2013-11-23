require 'spec_helper'

feature 'Showing Entries' do
  before do
    FactoryGirl.create(:event, entry: "Example entry for event")

    visit root_path
    user_login
    click_link 'Show Events'
  end

  scenario "Showing the individual entry" do
    within('table') do
      expect(page).to have_content("Example entry for event")
    end
  end
end
