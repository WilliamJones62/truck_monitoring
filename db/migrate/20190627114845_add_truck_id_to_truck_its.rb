class AddTruckIdToTruckIts < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_its, :truck_id, :integer
  end
end
