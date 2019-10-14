class AddTruckNumberToTruckLogs < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_logs, :truck_number, :string
  end
end
