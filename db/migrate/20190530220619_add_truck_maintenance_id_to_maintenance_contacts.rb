class AddTruckMaintenanceIdToMaintenanceContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :maintenance_contacts, :truck_maintenance_id, :integer
  end
end
