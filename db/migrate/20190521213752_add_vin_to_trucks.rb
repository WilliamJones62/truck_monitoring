class AddVinToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :vin, :string
  end
end
