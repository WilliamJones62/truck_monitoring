class RemoveLeaseEndFromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :lease_end, :date
  end
end
