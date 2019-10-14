class AddMedalionExpiresToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :medalion_expires, :date
  end
end
