class RemoveMaintDateFromTruckLogs < ActiveRecord::Migration[5.1]
  def change
    remove_column :truck_logs, :maint_date, :date
  end
end
