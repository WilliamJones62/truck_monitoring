class AddIftaExpiresToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :ifta_expires, :date
  end
end
