class AddWexcardReturnToTruckFinances < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_finances, :wexcard_return, :date
  end
end
