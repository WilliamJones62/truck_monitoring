class RemoveTempStatusFromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :temp_status, :string
  end
end
