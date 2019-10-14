class RemoveInstallFromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :install, :date
  end
end
