require 'rails_helper'

describe "Event Pages" do
  describe "GET /event_pages" do
    it "returns http success" do
      visit root_path
      user_login

      get_via_redirect events_path
      expect(response.status).to be(200)
    end
  end
end
