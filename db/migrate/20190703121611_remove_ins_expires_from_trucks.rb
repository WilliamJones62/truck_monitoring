class RemoveInsExpiresFromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :ins_expires, :date
  end
end
