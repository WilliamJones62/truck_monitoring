class RemoveIftaExpiresFromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :ifta_expires, :date
  end
end
