class AddTruckIdToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :truck_id, :integer
  end
end
