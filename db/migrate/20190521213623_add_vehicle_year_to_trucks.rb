class AddVehicleYearToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :vehicle_year, :integer
  end
end
