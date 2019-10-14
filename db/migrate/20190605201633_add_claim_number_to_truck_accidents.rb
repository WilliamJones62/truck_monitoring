class AddClaimNumberToTruckAccidents < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_accidents, :claim_number, :string
  end
end
