class AddContractEndToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :contract_end, :date
  end
end
