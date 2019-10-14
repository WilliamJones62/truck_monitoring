class AddTruckIdToTruckFinances < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_finances, :truck_id, :integer
  end
end
