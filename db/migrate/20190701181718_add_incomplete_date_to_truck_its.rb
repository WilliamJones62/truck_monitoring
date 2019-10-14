class AddIncompleteDateToTruckIts < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_its, :incomplete_date, :date
  end
end
