class Event < ActiveRecord::Base
  validates :entry, presence: true
end
