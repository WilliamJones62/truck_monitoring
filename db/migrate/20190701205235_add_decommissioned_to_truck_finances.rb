class AddDecommissionedToTruckFinances < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_finances, :decommissioned, :boolean
  end
end
