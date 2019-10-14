class AddOutReasonToTruckLogs < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_logs, :out_reason, :string
  end
end
