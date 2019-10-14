class AddRecoveryAmtToTruckAccidents < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_accidents, :recovery_amt, :decimal
  end
end
