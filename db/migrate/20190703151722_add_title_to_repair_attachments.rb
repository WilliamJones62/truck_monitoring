class AddTitleToRepairAttachments < ActiveRecord::Migration[5.1]
  def change
    add_column :repair_attachments, :title, :string
  end
end
