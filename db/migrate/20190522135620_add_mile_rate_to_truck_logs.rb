class AddMileRateToTruckLogs < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_logs, :mile_rate, :decimal
  end
end
