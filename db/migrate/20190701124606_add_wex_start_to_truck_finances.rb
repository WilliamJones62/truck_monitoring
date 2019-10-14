class AddWexStartToTruckFinances < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_finances, :wex_start, :date
  end
end
