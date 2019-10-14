class AddRegExpiresToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :reg_expires, :date
  end
end
