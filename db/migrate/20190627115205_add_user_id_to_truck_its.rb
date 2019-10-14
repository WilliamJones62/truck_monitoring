class AddUserIdToTruckIts < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_its, :user_id, :integer
  end
end
