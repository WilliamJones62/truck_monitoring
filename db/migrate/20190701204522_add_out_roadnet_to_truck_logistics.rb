class AddOutRoadnetToTruckLogistics < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_logistics, :out_roadnet, :date
  end
end
