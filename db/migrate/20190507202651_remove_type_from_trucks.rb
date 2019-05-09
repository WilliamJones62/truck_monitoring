class RemoveTypeFromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :type, :string
  end
end
