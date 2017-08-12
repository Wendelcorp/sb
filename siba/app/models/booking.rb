class Booking < ApplicationRecord
  before_save :calculate

  def calculate
    @type = self.bar_type
    @guests = self.guests.to_i
    fee = 0

    if @type == 'One Feature'
      if (@guests < 50)
        fee += 20
      elsif (@guests >= 50) && (@guests <= 199)
        fee += 15
      elsif (@guests < 199)
        fee += 10
      end
    elsif @type == "Two Features"
      if (@guests < 50)
        fee += 25
      elsif (@guests >= 50) && (@guests <= 199)
        fee += 18
      elsif (@guests < 199)
        fee += 13
      end
    elsif @type == "Three Features"
      if (@guests < 50)
        fee += 30
      elsif (@guests >= 50) && (@guests <= 199)
        fee += 20
      elsif (@guests < 199)
        fee += 15
      end
    end
    self.subtotal = fee * @guests
  end

end
