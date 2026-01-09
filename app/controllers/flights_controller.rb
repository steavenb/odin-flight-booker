class FlightsController < ApplicationController
    def index
        @airports = Airport.all
        @available_flight_dates = Flight.all.pluck(:start).map{ |start_date| start_date.to_date }.uniq
        if params[:departure_airport_id].present? && params[:arrival_airport_id].present? && params[:start_date].present?
            @flight_results = Flight.where(departure_airport_id: params[:departure_airport_id], arrival_airport_id: params[:arrival_airport_id], start: Time.parse(params[:start_date])..).order(start: :asc)
        end
    end
end
