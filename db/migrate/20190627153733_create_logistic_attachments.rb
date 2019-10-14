class CreateLogisticAttachments < ActiveRecord::Migration[5.1]
  def change
    create_table :logistic_attachments do |t|
      t.integer :truck_logistic_id
      t.string :image

      t.timestamps
    end
  end
end
