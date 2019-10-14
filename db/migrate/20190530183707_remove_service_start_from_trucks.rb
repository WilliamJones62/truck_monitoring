class RemoveServiceStartFromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :service_start, :date
  end
end
