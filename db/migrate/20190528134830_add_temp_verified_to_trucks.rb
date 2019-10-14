class AddTempVerifiedToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :temp_verified, :boolean
  end
end
