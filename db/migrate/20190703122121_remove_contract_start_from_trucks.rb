class RemoveContractStartFromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :contract_start, :date
  end
end
