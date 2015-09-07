require 'rails_helper'

describe User do
  it "should create a new user" do
    user = User.new(
      email:                 "test@example.com",
      password:              "password123",
      password_confirmation: "password123"
    )
    expect(user).to be_valid
  end

  it "should not create a user without an email" do
    user = User.new(
      email:                 "",
      password:              "password123",
      password_confirmation: "password123"
    )
    expect(user).to be_invalid
  end
end
