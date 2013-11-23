require 'spec_helper'

describe ApiKey do
  let(:api_key) { ApiKey.create! }

  it "should create a new ApiKey access_token" do
    expect(api_key.access_token).to be
  end

  it "should be a String object" do
    expect(api_key.access_token).to be_kind_of(String)
  end
end
