class RemoveOutReasonFromTruckLogs < ActiveRecord::Migration[5.1]
  def change
    remove_column :truck_logs, :out_reason, :string
  end
end
