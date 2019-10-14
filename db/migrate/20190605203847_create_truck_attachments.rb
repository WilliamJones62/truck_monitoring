class CreateTruckAttachments < ActiveRecord::Migration[5.1]
  def change
    create_table :truck_attachments do |t|
      t.integer :truck_id
      t.string :image

      t.timestamps
    end
  end
end
