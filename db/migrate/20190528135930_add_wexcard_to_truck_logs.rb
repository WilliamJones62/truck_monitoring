class AddWexcardToTruckLogs < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_logs, :wexcard, :string
  end
end
