class ChangeUserIdDataTypeToTruckIts < ActiveRecord::Migration[5.1]
  def change
    change_column :truck_its, :user_id, :string
  end
end
