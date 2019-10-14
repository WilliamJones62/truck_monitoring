class RemoveContractEndFromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :contract_end, :date
  end
end
