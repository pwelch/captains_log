require 'rails_helper'

describe "Static pages" do
  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content("Captain's Log") }
    it { should have_title("Captain's Log") }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title("About") }
  end
end
