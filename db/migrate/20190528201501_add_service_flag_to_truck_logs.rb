class AddServiceFlagToTruckLogs < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_logs, :service_flag, :boolean
  end
end
