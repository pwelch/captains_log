FactoryGirl.define do
  factory :event do
    entry "Example entry"
  end

  factory :user do
    email    "test@example.com"
    password "password123"
    password_confirmation "password123"
  end

  # Add admin feature
  # factory :admin do
  #  # pending
  # end
end
