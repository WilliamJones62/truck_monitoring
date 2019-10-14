class AddIncompleteDateToTruckLogistics < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_logistics, :incomplete_date, :date
  end
end
