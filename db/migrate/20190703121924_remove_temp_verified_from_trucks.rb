class RemoveTempVerifiedFromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :temp_verified, :boolean
  end
end
