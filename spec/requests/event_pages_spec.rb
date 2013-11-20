require 'spec_helper'

describe "Event Pages" do
  describe "GET /event_pages" do
    it "returns http success" do
      get events_path
      response.status.should be(200)
    end
  end
end
