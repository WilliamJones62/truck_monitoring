class AddServiceTypeToTruckLogs < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_logs, :service_type, :string
  end
end
