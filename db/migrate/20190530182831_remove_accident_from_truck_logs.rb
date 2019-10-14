class RemoveAccidentFromTruckLogs < ActiveRecord::Migration[5.1]
  def change
    remove_column :truck_logs, :accident, :date
  end
end
