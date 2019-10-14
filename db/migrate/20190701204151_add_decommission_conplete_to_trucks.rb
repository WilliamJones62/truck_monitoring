class AddDecommissionConpleteToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :decommission_complete, :boolean
  end
end
