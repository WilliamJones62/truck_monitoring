class AddVideo2ToTruckAccidents < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_accidents, :video2, :string
  end
end
