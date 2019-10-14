class RemoveAccidentIdFromAccidentContacts < ActiveRecord::Migration[5.1]
  def change
    remove_column :accident_contacts, :accident_id, :integer
  end
end
