class RemoveCamera2FromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :camera2, :boolean
  end
end
