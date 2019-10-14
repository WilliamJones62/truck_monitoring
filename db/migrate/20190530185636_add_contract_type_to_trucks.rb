class AddContractTypeToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :contract_type, :string
  end
end
