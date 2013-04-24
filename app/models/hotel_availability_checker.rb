class HotelAvailabilityChecker

  attr_accessor :hotel

  def initialize(hotel)
    @hotel = hotel
  end

  def available_for_range(date, length_of_stay)
    (date ... date + length_of_stay).to_a.all? do |date|
      HotelApi.available?(hotel.api_id, date.to_s)
    end
  end

end
