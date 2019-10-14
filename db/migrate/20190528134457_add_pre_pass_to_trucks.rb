class AddPrePassToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :pre_pass, :string
  end
end
