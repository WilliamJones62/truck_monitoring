class AddEquipmentRemovedToTruckIts < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_its, :equipment_removed, :date
  end
end
