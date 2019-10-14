class AddServiceTypeToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :service_type, :string
  end
end
