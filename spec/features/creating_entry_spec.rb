require 'spec_helper'

feature 'Creating Entries' do
  before do
    #FactoryGirl.create(:project, name: "Internet Explorer")

    visit '/'
    click_link "Events"
    click_link "Add Event"
  end

  scenario "Creating an entry" do
    fill_in "event_entry", with: "Test log entry"
    click_button "Create Event"

    expect(page).to have_content("Test log entry")
  end

  scenario "Creating an entry without valid attributes fails" do
    click_button "Create Event"

    expect(page).to have_content("Entry can't be blank")
  end
end
