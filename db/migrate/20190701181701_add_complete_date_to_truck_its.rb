class AddCompleteDateToTruckIts < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_its, :complete_date, :date
  end
end
