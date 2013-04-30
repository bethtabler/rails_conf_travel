class Trip < ActiveRecord::Base
  attr_accessible :activity, :description, :end_date, :image_name, :location,
      :name, :price, :start_date, :tag_line

  validates_presence_of :description, :start_date, :end_date, :price, :tag_line

  def taxable_for_user?(user)
    distance = (user.home_year - start_date.year).abs
    distance > 100
  end
end
