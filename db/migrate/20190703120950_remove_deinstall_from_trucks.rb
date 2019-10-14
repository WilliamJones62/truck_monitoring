class RemoveDeinstallFromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :deinstall, :date
  end
end
