describe HotelAvailabilityChecker do

  describe "availability" do
    it "translates a range" do
      hotel = stub(api_id: "abc123")
      checker = HotelAvailabilityChecker.new(hotel)
      HotelApi.should_receive(:available?).with("abc123", "1971-01-21").and_return(true)
      HotelApi.should_receive(:available?).with("abc123", "1971-01-22").and_return(true)
      HotelApi.should_receive(:available?).with("abc123", "1971-01-23").and_return(true)
      checker.available_for_range(Date.parse("Jan 21, 1971"), 3)
    end
  end

end
