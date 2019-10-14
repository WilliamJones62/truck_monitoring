class RemoveTruckVideoFromTruckAccidents < ActiveRecord::Migration[5.1]
  def change
    remove_column :truck_accidents, :truck_video, :string
  end
end
