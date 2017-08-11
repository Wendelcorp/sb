class Booking < ApplicationRecord
  before_save :calculate

  def calculate
    @type = self.bar_type
    @guests = self.guests.to_i
    additional_fee = 0

    if @type == 'One Feature'
      if (@guests < 50)
        additional_fee += 20
      elsif (@guests >= 50) && (@guests <= 199)
        additional_fee += 15
      elsif (@guests < 199)
        additional_fee += 10
      end
    elsif @type == "Two Features"
      if (@guests < 50)
        additional_fee += 25
      elsif (@guests >= 50) && (@guests <= 199)
        additional_fee += 18
      elsif (@guests < 199)
        additional_fee += 10
      end
    elsif @type == "Three Features"
      if (@guests < 50)
        additional_fee += 30
      elsif (@guests >= 50) && (@guests <= 199)
        additional_fee += 13
      elsif (@guests < 199)
        additional_fee += 15
      end
    end
    self.subtotal = additional_fee * @guests
  end

end
