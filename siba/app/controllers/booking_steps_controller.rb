class BookingStepsController < ApplicationController
  include Wicked::Wizard
  steps :your_event, :your_bar, :your_details

  def show
    @booking = Booking.find(params[:booking_id])
    render_wizard
  end
end
