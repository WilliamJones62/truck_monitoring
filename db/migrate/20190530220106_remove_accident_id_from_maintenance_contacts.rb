class RemoveAccidentIdFromMaintenanceContacts < ActiveRecord::Migration[5.1]
  def change
    remove_column :maintenance_contacts, :maintenance_id, :integer
  end
end
