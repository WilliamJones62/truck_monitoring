class AddTitleToFinanceAttachments < ActiveRecord::Migration[5.1]
  def change
    add_column :finance_attachments, :title, :string
  end
end
