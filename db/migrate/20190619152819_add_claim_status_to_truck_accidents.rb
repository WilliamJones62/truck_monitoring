class AddClaimStatusToTruckAccidents < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_accidents, :claim_status, :string
  end
end
