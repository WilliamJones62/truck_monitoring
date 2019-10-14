class AddUserIdToTruckMaintenances < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_maintenances, :user_id, :string
  end
end
