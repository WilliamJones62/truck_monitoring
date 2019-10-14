class AddPageCompleteToTruckFinances < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_finances, :page_complete, :boolean
  end
end
