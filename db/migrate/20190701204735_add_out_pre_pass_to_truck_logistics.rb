class AddOutPrePassToTruckLogistics < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_logistics, :out_pre_pass, :date
  end
end
