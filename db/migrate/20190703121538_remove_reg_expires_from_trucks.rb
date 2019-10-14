class RemoveRegExpiresFromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :reg_expires, :date
  end
end
