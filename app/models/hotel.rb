class Hotel < ActiveRecord::Base
  belongs_to :trip
  attr_accessible :description, :name, :price, :trip, :api_id
end
