class RemoveServiceFlagFromTruckLogs < ActiveRecord::Migration[5.1]
  def change
    remove_column :truck_logs, :service_flag, :boolean
  end
end
