class AddTruckIdToTruckLogistics < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_logistics, :truck_id, :integer
  end
end
