class AddTruckLengthToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :truck_length, :decimal
  end
end
