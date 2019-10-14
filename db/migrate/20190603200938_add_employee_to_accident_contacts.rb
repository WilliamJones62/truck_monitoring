class AddEmployeeToAccidentContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :accident_contacts, :employee, :string
  end
end
