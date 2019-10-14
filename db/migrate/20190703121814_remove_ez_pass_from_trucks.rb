class RemoveEzPassFromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :ez_pass, :string
  end
end
