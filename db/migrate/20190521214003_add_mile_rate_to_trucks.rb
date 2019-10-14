class AddMileRateToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :mile_rate, :decimal
  end
end
