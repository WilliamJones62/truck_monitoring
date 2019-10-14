class AddVideo3ToTruckAccidents < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_accidents, :video3, :string
  end
end
