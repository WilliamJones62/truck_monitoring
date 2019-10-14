class AddTruckVideoToTruckAccidents < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_accidents, :truck_video, :string
  end
end
