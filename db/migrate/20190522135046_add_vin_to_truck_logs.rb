class AddVinToTruckLogs < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_logs, :vin, :string
  end
end
