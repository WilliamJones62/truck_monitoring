class AddTruckAccidentIdToAccidentContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :accident_contacts, :truck_accident_id, :integer
  end
end
