class AddRepairTypeToTruckRepairs < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_repairs, :repair_type, :string
  end
end
