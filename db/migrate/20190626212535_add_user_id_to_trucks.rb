class AddUserIdToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :user_id, :string
  end
end
