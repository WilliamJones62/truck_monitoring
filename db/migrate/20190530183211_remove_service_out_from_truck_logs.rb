class RemoveServiceOutFromTruckLogs < ActiveRecord::Migration[5.1]
  def change
    remove_column :truck_logs, :service_out, :date
  end
end
