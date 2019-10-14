class RemoveInsuranceClaimFromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :insurance_claim, :boolean
  end
end
