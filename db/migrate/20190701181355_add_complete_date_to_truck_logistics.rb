class AddCompleteDateToTruckLogistics < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_logistics, :complete_date, :date
  end
end
