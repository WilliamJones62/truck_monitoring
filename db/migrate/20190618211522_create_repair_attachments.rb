class CreateRepairAttachments < ActiveRecord::Migration[5.1]
  def change
    create_table :repair_attachments do |t|
      t.integer :truck_repair_id
      t.string :image

      t.timestamps
    end
  end
end
