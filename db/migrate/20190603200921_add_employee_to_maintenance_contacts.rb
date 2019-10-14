class AddEmployeeToMaintenanceContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :maintenance_contacts, :employee, :string
  end
end
