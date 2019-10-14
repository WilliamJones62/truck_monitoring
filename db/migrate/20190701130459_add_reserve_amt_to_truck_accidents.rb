class AddReserveAmtToTruckAccidents < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_accidents, :reserve_amt, :decimal
  end
end
