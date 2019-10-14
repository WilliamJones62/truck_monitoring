class AddReserveDateToTruckAccidents < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_accidents, :reserve_date, :date
  end
end
