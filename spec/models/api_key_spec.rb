require 'spec_helper'

describe ApiKey do
  let(:api_key) { ApiKey.create!(description: "Test API Key") }

  it { should validate_presence_of(:description) }

  it "create a new instance given valid attributes" do
    expect(api_key.save).to be_true
  end

  it "should not create a new instance given invalid attributes" do
    invalid_api_key = ApiKey.new
    expect(invalid_api_key.save).to be_false
  end

  it "access_token should be a String object" do
    expect(api_key.access_token).to be_kind_of(String)
  end

  it "description should be a String object" do
    expect(api_key.description).to be_kind_of(String)
  end
end
