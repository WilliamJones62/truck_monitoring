class AddCloseDateToTruckAccidents < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_accidents, :close_date, :date
  end
end
