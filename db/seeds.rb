# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

# Add default application user
user = User.new({
  :email    => 'user@example.com',
  :password => 'password123'
})

user.save!
