class AddEzPassToTruckLogs < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_logs, :ez_pass, :string
  end
end
