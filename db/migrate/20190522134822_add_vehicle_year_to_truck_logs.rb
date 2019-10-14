class AddVehicleYearToTruckLogs < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_logs, :vehicle_year, :integer
  end
end
