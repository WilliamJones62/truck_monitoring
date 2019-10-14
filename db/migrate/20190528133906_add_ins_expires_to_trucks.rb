class AddInsExpiresToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :ins_expires, :date
  end
end
