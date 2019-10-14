class RemoveServiceStartFromTruckLogs < ActiveRecord::Migration[5.1]
  def change
    remove_column :truck_logs, :service_start, :date
  end
end
