class AddServiceStartToTruckLogs < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_logs, :service_start, :date
  end
end
