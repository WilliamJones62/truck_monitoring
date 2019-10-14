class RemoveAccidentIdFromAccidentAttachments < ActiveRecord::Migration[5.1]
  def change
    remove_column :accident_attachments, :accident_id, :integer
  end
end
