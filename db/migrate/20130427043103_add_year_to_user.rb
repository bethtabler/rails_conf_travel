class AddYearToUser < ActiveRecord::Migration
  def change
    add_column :users, :home_year, :integer
  end
end
