class StaticPagesController < ApplicationController
  # Home Page
  def home
    @events = Event.last(10)
  end

  # About Page
  def about
  end
end
