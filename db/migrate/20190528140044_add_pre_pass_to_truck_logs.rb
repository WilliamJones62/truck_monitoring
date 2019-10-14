class AddPrePassToTruckLogs < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_logs, :pre_pass, :string
  end
end
