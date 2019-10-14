class AddLeaseEndToTruckLogs < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_logs, :lease_end, :date
  end
end
