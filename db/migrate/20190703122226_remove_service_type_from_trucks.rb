class RemoveServiceTypeFromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :service_type, :string
  end
end
