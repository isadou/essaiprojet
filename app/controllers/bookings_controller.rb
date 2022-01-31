class BookingsController < ApplicationController
  before_action :set_booking, only: [ :destroy ]
  before_action :set_user, only: [:new, :create]
  def new
    @car = Car.find(params[:car_id])
    @booking = Booking.new
  end

  def create
    @car = Car.find(params[:car_id])
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to car_path(@car)
    else
      render 'new'
    end
  end

  def destroy
    @car = Car.find(params[:car_id])
    @booking.destroy
    redirect_to car_path(@car)
  end

private
  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_user
    @user = current_user
  end

  def booking_params
    params.require(:booking).permit(:duree, :car_id, :user_id)
  end

end
