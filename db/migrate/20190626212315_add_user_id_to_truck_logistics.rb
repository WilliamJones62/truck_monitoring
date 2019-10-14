class AddUserIdToTruckLogistics < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_logistics, :user_id, :string
  end
end
