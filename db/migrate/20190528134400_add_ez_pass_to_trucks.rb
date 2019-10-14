class AddEzPassToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :ez_pass, :string
  end
end
