class AddHutExpiresToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :hut_expires, :date
  end
end
