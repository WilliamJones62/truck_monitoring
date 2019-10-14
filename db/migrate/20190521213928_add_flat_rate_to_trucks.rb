class AddFlatRateToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :flat_rate, :decimal
  end
end
