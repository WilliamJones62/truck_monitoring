class RemoveInsuranceClaimFromTruckLogs < ActiveRecord::Migration[5.1]
  def change
    remove_column :truck_logs, :insurance_claim, :boolean
  end
end
