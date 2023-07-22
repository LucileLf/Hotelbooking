class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
    @current_bookings = current_user.bookings.where('start_date >= ? AND end_date >= ?', Date.today, Date.today)
    @coming_bookings = current_user.bookings.where('start_date > ?', Date.today)
    @passed_bookings = current_user.bookings.where('end_date < ?', Date.today)
  end
end
