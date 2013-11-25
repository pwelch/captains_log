FactoryGirl.define do
  factory :event do
    entry "Example entry"
  end

  factory :user do
    email                 "test@example.com"
    password              "password123"
    password_confirmation "password123"
  end

  factory :api_key do
    access_token "4abbb4841f1e79c09b8b7e9d570c1b3a"
    description  "Factory API Key"
  end

  # Add admin feature
  # factory :admin do
  #  # pending
  # end
end
