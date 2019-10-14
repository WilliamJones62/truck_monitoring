class AddUserIdToTruckRepairs < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_repairs, :user_id, :string
  end
end
