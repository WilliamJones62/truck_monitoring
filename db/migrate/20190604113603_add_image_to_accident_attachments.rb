class AddImageToAccidentAttachments < ActiveRecord::Migration[5.1]
  def change
    add_column :accident_attachments, :image, :string
  end
end
