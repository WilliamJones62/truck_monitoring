class AddContractStartToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :contract_start, :date
  end
end
