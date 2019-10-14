class AddPageCompleteToTruckLogistics < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_logistics, :page_complete, :boolean
  end
end
