class BookingsController < ApplicationController

  def create
    @room = Room.find(params[:room_id])
    @booking = Booking.new(
      start_date: Date.parse(params[:booking][:start_date]),
      end_date: Date.parse(params[:booking][:end_date]),
      room: @room,
      user: current_user
    )
    @booking.total_price = ((@booking.end_date - @booking.start_date)+1) * Rational(@room.price_per_night)
    if @booking.save
      redirect_to room_path(@room)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def show
  #   @room
  # end

  # def destroy

  # end
  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end


end
