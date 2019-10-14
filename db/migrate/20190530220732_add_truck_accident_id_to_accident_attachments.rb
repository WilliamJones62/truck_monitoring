class AddTruckAccidentIdToAccidentAttachments < ActiveRecord::Migration[5.1]
  def change
    add_column :accident_attachments, :truck_accident_id, :integer
  end
end
