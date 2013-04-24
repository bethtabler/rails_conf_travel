class HotelApi

  def self.available?(hotel_api_id, date_string)
    sleep(rand * 5)
    result = rand
    if result < 0.95
      true
    elsif result < 0.99
      false
    else
      sleep(rand * 10)
      raise "Ooops"
    end
  end

end
