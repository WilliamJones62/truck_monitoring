class RemoveServiceFlagFromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :service_flag, :boolean
  end
end
