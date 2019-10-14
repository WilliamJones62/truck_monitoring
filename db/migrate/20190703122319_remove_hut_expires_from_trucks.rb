class RemoveHutExpiresFromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :hut_expires, :date
  end
end
