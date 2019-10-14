class AddMedalionExpiresToTruckLogs < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_logs, :medalion_expires, :date
  end
end
