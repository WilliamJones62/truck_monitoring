class CreateAccidentAttachments < ActiveRecord::Migration[5.1]
  def change
    create_table :accident_attachments do |t|
      t.integer :accident_id
      t.string :attachment

      t.timestamps
    end
  end
end
