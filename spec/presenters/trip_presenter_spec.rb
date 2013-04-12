require 'spec_helper'

module Presenters

  class DumbTrip < OpenStruct
  end

  describe TripPresenter do
    it "presents trips" do
      TripPresenter.present_trips([DumbTrip, DumbTrip]).map(&:class)
          .should == [TripPresenter, TripPresenter]
    end

    describe "with one presenter" do
      it "prints a date span" do
        trip = DumbTrip.new(
            :start_date => Date.parse("January 22, 1971"),
            :end_date => Date.parse("May 31, 1971"))
        presenter = TripPresenter.new(trip)
        presenter.date_span.should == "January 22, 1971 - May 31, 1971"
      end

      it "displays a price" do
        presenter = TripPresenter.new(DumbTrip.new(:price => 100.5))
        presenter.price_display.should == "$100.50"
      end
    end

  end
end
