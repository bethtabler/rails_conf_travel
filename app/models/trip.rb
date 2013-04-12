class Trip < ActiveRecord::Base
  attr_accessible :activity, :description, :end_date, :image_name, :location,
      :name, :price, :start_date, :tag_line


end
