class Purchase

  attr_accessor :trip, :hotel_stay, :activities

  def initialize(trip, hotel_stay = nil, activities = [])
    @trip = trip
    @hotel_stay = hotel_stay
    @activities = activities
  end

  def pre_tax_total
    result = trip.price
    result += hotel_stay.pre_tax_total if hotel_stay
    result += activities.map(&:price).sum
    result
  end

end
