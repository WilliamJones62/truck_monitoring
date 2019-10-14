class AddLicenseToTruckLogs < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_logs, :license, :string
  end
end
