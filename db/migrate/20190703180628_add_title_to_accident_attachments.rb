class AddTitleToAccidentAttachments < ActiveRecord::Migration[5.1]
  def change
    add_column :accident_attachments, :title, :string
  end
end
