class RemoveMileRateFromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :mile_rate, :decimal
  end
end
