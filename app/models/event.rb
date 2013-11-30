class Event < ActiveRecord::Base
  validates :entry, presence: true

  # set default will_paginate limit
  self.per_page = 25
end
