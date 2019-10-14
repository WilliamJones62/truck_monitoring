class AddMaintDateToTruckLogs < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_logs, :maint_date, :date
  end
end
