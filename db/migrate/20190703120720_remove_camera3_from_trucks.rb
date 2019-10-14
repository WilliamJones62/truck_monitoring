class RemoveCamera3FromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :camera3, :boolean
  end
end
