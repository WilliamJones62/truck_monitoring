class AddTabletToTruckIts < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_its, :tablet, :boolean
  end
end
