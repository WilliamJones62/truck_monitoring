class AddStartMileageToTruckLogs < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_logs, :start_mileage, :integer
  end
end
