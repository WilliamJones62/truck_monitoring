class AddTruckActiveToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :truck_active, :boolean
  end
end
