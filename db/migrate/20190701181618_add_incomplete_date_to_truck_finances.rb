class AddIncompleteDateToTruckFinances < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_finances, :incomplete_date, :date
  end
end
