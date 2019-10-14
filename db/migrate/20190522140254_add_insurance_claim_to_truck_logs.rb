class AddInsuranceClaimToTruckLogs < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_logs, :insurance_claim, :boolean
  end
end
