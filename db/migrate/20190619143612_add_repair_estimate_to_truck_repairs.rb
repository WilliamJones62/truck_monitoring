class AddRepairEstimateToTruckRepairs < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_repairs, :repair_estimate, :decimal
  end
end
