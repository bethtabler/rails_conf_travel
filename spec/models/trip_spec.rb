require 'spec_helper'

describe Trip do

  describe "taxes" do
    let(:trip) { FactoryGirl.build(:trip,
        :start_date => "Jan 22, 1971", :price => 100) }
    let(:user) { FactoryGirl.build(:user) }

    it "knows that there is no tax on nearby trips" do
      user.home_year = 1971
      expect(trip).not_to be_taxable_for_user(user)
    end

    it "knows there is a tax on far away trips" do
      user.home_year = 2100
      expect(trip).to be_taxable_for_user(user)
    end
  end
end
