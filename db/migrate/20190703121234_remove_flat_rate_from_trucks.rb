class RemoveFlatRateFromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :flat_rate, :decimal
  end
end
