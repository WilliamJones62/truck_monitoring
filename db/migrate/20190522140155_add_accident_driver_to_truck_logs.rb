class AddAccidentDriverToTruckLogs < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_logs, :accident_driver, :string
  end
end
