class AddTruckLengthToTruckLogs < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_logs, :truck_length, :decimal
  end
end
