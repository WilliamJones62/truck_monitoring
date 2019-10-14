class RemoveMedalionExpiresFromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :medalion_expires, :date
  end
end
