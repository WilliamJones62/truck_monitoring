class AddTitleToLogisticAttachments < ActiveRecord::Migration[5.1]
  def change
    add_column :logistic_attachments, :title, :string
  end
end
