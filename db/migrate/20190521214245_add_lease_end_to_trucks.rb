class AddLeaseEndToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :lease_end, :date
  end
end
