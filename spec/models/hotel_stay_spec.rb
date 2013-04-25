require "spec_helper"

describe HotelStay do

  describe "price" do
    it "calculates its own price" do
      hotel = FactoryGirl.create(:hotel, price: 50)
      stay = HotelStay.new(hotel, 3)
      expect(stay.pre_tax_total).to eq(150)
    end
  end

  describe "availability" do
    it "should description" do
      hotel = FactoryGirl.build(:hotel)
      stay = HotelStay.new(hotel, 3, "Jan 21, 1971")
      stay.availablity_checker.should_receive(:available_for_range)
          .with(Date.parse("Jan 21, 1971"), 3)
          .and_return(true)
      expect(stay.available?).to be_true
    end
  end

end
