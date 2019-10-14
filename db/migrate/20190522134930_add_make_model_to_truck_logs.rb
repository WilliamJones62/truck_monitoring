class AddMakeModelToTruckLogs < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_logs, :make_model, :string
  end
end
