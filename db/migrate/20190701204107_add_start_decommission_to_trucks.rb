class AddStartDecommissionToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :start_decommission, :boolean
  end
end
