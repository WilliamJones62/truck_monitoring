class AddEzstartToTruckFinances < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_finances, :ezstart, :date
  end
end
