class RemoveVideo3FromTruckAccidents < ActiveRecord::Migration[5.1]
  def change
    remove_column :truck_accidents, :video3, :string
  end
end
