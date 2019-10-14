class AddAccidentDriverToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :accident_driver, :string
  end
end
