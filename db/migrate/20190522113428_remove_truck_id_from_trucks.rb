class RemoveTruckIdFromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :truck_id, :string
  end
end
