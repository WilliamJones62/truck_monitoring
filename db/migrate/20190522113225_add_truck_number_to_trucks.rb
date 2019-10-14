class AddTruckNumberToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :truck_number, :string
  end
end
