class RemoveCamera1FromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :camera1, :boolean
  end
end
