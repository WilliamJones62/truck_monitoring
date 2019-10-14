class AddInsuranceCancelledToTruckFinances < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_finances, :insurance_cancelled, :date
  end
end
