class AddCompleteDateToTruckAccidents < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_accidents, :complete_date, :date
  end
end
