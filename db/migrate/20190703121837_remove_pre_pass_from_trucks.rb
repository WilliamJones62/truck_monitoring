class RemovePrePassFromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :pre_pass, :string
  end
end
