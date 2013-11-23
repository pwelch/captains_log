require 'spec_helper'

describe "/api/v1/events", :type => :api do
  let(:token) { FactoryGirl.create(:api_key) }
  let(:auth_header) {
    {
      "Content-Type"  => "application/json",
      "Authorization" => "Token token=#{token.access_token}"
    }
  }

  describe "GET /api/v1/events" do
    it "should receive 200 when authenticated with a token" do
      get "/api/v1/events", {}, auth_header
      expect(response.status).to eq(200)
    end

    it "should receive 401 when not authenticated" do
      get "/api/v1/events"
      expect(response.status).to eq(401)
    end
  end

  describe "POST /api/v1/events" do
    let(:body)             { {event: {entry: "Test entry"}}.to_json }
    let(:body_entry_empty) { {event: {entry: ""}}.to_json }

    it 'should receive status 201 when successfully creating an event' do
      post "/api/v1/events", body, auth_header
      expect(response.status).to eq(201)
    end

    it 'should receive status 401 when creating an event when not authenticated' do
      post "/api/v1/events", body
      expect(response.status).to eq(401)
    end

    it "should receive status 422 when it can not process the request" do
      post "/api/v1/events", body_entry_empty, auth_header
      expect(response.status).to eq(422)
    end
  end
end
