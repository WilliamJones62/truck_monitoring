class AddEzendToTruckFinances < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_finances, :ezend, :date
  end
end
