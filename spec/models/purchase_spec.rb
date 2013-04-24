require 'spec_helper'

describe Purchase do

  describe "pricing" do
    let(:trip) { FactoryGirl.create(:trip, price: 200) }

    it "can calculate price given a trip and a hotel" do
      purchase = Purchase.new(trip)
      expect(purchase.pre_tax_total).to eq(200)
    end

    it "can calculate price given a trip and a hotel stay" do
      hotel_stay = stub(pre_tax_total: 150)
      purchase = Purchase.new(trip, hotel_stay)
      expect(purchase.pre_tax_total).to eq(350)
    end

    it "can calculate a price given some activities " do
      cheap_activity = Activity.new(price: 50)
      expensive_activity = Activity.new(price: 1000)
      purchase = Purchase.new(trip, nil, [cheap_activity, expensive_activity])
      expect(purchase.pre_tax_total).to eq(200 + 50 + 1000)
    end
  end
end
