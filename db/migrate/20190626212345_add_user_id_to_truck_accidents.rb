class AddUserIdToTruckAccidents < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_accidents, :user_id, :string
  end
end
