class AddCompleteDateToTruckFinances < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_finances, :complete_date, :date
  end
end
