class AddPageCompleteToTruckIts < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_its, :page_complete, :boolean
  end
end
