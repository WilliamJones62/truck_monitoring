class AddClaimDateToTruckAccidents < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_accidents, :claim_date, :date
  end
end
