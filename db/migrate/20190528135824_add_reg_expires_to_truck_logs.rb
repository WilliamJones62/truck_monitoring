class AddRegExpiresToTruckLogs < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_logs, :reg_expires, :date
  end
end
