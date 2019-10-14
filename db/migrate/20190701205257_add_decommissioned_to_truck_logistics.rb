class AddDecommissionedToTruckLogistics < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_logistics, :decommissioned, :boolean
  end
end
