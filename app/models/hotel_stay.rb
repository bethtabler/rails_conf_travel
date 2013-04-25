class HotelStay

  attr_accessor :hotel, :length_of_stay, :availablity_checker, :start_of_stay

  def initialize(hotel, length_of_stay = 0, start_of_stay = nil)
    @hotel = hotel
    @length_of_stay = length_of_stay
    @start_of_stay = Date.parse(start_of_stay) if start_of_stay
    @availablity_checker = HotelAvailabilityChecker.new(hotel)
  end

  def pre_tax_total
    hotel.price * length_of_stay
  end

  def available?
    availablity_checker.available_for_range(start_of_stay, length_of_stay)
  end

end
