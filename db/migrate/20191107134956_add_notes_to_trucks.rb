class AddNotesToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :notes, :string
  end
end
