class BookingsController < ApplicationController

  def create
    @room = Room.find(params[:room_id])
    @booking = Booking.new(
      start_date: Date.parse(params[:booking][:start_date].split(" au ").first),
      end_date: Date.parse(params[:booking][:start_date].split(" au ").last),
      room: @room,
      user: current_user
    )
    @booking.total_price = ((@booking.end_date - @booking.start_date)+1) * Rational(@room.price_per_night)
    if @booking.save
      redirect_to profile_path_url
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @room = Room.find(params[:room_id])
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id])
    room = @booking.room
    @booking.destroy!
    redirect_to profile_path_url
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end


end
