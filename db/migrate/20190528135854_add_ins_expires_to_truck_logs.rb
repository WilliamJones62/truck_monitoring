class AddInsExpiresToTruckLogs < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_logs, :ins_expires, :date
  end
end
