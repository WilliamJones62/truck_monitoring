class RemoveVideoStatusFromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :video_status, :string
  end
end
