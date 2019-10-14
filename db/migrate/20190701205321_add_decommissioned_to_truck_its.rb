class AddDecommissionedToTruckIts < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_its, :decommissioned, :boolean
  end
end
