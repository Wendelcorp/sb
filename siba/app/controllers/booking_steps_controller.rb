class BookingStepsController < ApplicationController
  include Wicked::Wizard
  steps :your_event, :your_bar, :your_details

  def show
    @booking = Booking.find(params[:booking_id])
    render_wizard
  end
  def update
    @booking = Booking.find(params[:booking_id])
    @booking.update(booking_params)
    render_wizard @booking
  end
end

private
def booking_params
  params.require(:booking).permit(:details, :name, :email, :phone, :company, :event_type, :date, :bar_type, :add_ons, :address, :guests, :start_time, :permit, :additional, :subtotal)
end
