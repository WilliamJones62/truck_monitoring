class AddImageTypeToTruckAttachments < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_attachments, :image_type, :string
  end
end
