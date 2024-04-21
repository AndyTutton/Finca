class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking
    else
      render 'new'
    end
  end

  def new
    @booking = Booking.new
  end

end
