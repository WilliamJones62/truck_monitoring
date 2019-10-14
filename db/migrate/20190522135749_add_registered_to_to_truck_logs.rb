class AddRegisteredToToTruckLogs < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_logs, :registered_to, :string
  end
end
