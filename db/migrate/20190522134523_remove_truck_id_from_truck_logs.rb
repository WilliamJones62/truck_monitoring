class RemoveTruckIdFromTruckLogs < ActiveRecord::Migration[5.1]
  def change
    remove_column :truck_logs, :truck_id, :string
  end
end
