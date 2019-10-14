class AddIncompleteDateToTruckAccidents < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_accidents, :incomplete_date, :date
  end
end
