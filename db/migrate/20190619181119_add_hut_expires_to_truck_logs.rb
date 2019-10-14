class AddHutExpiresToTruckLogs < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_logs, :hut_expires, :date
  end
end
