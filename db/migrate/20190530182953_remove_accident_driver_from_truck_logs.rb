class RemoveAccidentDriverFromTruckLogs < ActiveRecord::Migration[5.1]
  def change
    remove_column :truck_logs, :accident_driver, :string
  end
end
