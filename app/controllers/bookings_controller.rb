class BookingsController < ApplicationController
  before_action :set_booking, only: %i[new create]

  def new
    # @offer = Offer.find(params[:offer_id])
    @booking = Booking.new
  end

  def create
    # @offer = Offer.find(params[:offer_id])
    @booking = Booking.new(booking_params)
    @booking.offer = @offer
    @booking.user = current_user

    if @booking.save
      redirect_to offer_path(@offer), notice: "You have booked this offer!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to offer_path(@booking.offer), notice: "Booking was successfully deleted."
  end

  private

  def set_booking
    @offer = Offer.find(params[:offer_id])
  end

  def booking_params
    params.require(:booking).permit(:date, :comment, :start_date, :end_date)
  end
end
