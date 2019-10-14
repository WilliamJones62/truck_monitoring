class CreateFinanceAttachments < ActiveRecord::Migration[5.1]
  def change
    create_table :finance_attachments do |t|
      t.integer :truck_finance_id
      t.string :image

      t.timestamps
    end
  end
end
