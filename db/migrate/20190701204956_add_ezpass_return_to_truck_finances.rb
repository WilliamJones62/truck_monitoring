class AddEzpassReturnToTruckFinances < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_finances, :ezpass_return, :date
  end
end
