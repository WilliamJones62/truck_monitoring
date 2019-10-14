class CreateAccidentContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :accident_contacts do |t|
      t.integer :accident_id
      t.string :company
      t.string :contact_name
      t.date :contact_date
      t.time :contact_time
      t.string :contact_type
      t.text :contact_details

      t.timestamps
    end
  end
end
