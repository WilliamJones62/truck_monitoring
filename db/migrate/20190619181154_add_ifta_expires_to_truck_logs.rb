class AddIftaExpiresToTruckLogs < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_logs, :ifta_expires, :date
  end
end
