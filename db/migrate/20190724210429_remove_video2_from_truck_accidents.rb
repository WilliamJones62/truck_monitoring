class RemoveVideo2FromTruckAccidents < ActiveRecord::Migration[5.1]
  def change
    remove_column :truck_accidents, :video2, :string
  end
end
