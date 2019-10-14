class AddAccidentToTruckLogs < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_logs, :accident, :date
  end
end
