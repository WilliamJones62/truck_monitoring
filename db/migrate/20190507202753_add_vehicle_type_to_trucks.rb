class AddVehicleTypeToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :vehicle_type, :string
  end
end
