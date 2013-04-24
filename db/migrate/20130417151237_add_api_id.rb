class AddApiId < ActiveRecord::Migration
  def change
    add_column :hotels, :api_id, :string
  end
end
