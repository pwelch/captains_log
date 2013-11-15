require 'spec_helper'

describe "Static pages" do
  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('CLog') }
    it { should have_title('CLog') }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title("CLog | About") }
  end
end
