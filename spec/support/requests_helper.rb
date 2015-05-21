require 'rails_helper'

def user_login
  click_link "Login"
  user = FactoryGirl.create(:user)
  fill_in "user_email", with: user.email
  fill_in "user_password", with: user.password
  click_button "Login"
end
