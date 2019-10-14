class AddFlatRateToTruckLogs < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_logs, :flat_rate, :decimal
  end
end
