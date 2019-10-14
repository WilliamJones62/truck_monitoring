class RemoveDvrFromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :dvr, :boolean
  end
end
