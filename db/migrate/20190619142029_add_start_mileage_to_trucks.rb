class AddStartMileageToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :start_mileage, :integer
  end
end
