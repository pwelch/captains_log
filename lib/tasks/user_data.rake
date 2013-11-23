# Create a default user
# http://stackoverflow.com/questions/7703081/devise-in-rails-3-1-1-adding-an-admin-user-via-seed
namespace :db do
  desc "Create a default user in database"
  task populate: :environment do
    #admin = User.create!(
    User.create!(
                 email: "user@example.com",
                 password: "password123",
                 password_confirmation: "password123")
    #admin.toggle!(:admin)
  end
end
