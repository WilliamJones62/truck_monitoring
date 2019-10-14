class RemoveContractTypeFromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :contract_type, :string
  end
end
