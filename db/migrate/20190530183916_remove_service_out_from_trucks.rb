class RemoveServiceOutFromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :service_out, :date
  end
end
