class RemoveTruckLengthFromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :truck_length, :integer
  end
end
