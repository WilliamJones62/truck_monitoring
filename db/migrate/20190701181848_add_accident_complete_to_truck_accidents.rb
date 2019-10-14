class AddAccidentCompleteToTruckAccidents < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_accidents, :accident_complete, :boolean
  end
end
