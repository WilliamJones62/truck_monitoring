class AddInsuranceClaimToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :insurance_claim, :boolean
  end
end
