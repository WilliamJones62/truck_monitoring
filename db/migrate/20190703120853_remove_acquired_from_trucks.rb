class RemoveAcquiredFromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :acquired, :date
  end
end
