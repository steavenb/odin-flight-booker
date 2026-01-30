class PassengerMailer < ApplicationMailer

    def confirmation_email(passenger, booking)
        @passenger = passenger
        @booking = booking
        mail(to: @passenger.email, subject: "Booking Confirmation")
    end
end
