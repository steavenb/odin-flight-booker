class BookingsController < ApplicationController
  def new
    @booking = Booking.new(flight_id: params[:flight_id])
    @flight = Flight.find(params[:flight_id])
    params[:number_of_passengers].to_i.times do
      @booking.passengers.build
    end
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking), notice: "Booking created successfully"
    else
      @flight = Flight.find(params[:booking][:flight_id])
      render :new, status: :unprocessable_entity, alert: "Booking creation failed"
    end
  end
  
  def show
    @booking = Booking.find(params[:id])
  end

  def index
    @bookings = Booking.all
  end

  private
  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end
end
