class AddContractTypeToTruckLogs < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_logs, :contract_type, :string
  end
end
