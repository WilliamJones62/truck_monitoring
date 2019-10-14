class RemoveAttachmentFromAccidentAttachments < ActiveRecord::Migration[5.1]
  def change
    remove_column :accident_attachments, :attachment, :string
  end
end
