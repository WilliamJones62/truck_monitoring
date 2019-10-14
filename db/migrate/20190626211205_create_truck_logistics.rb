class CreateTruckLogistics < ActiveRecord::Migration[5.1]
  def change
    create_table :truck_logistics do |t|
      t.date :reg_expires
      t.string :pre_pass
      t.string :service_type
      t.date :hut_expires
      t.date :ifta_expires
      t.date :medallion_expires

      t.timestamps
    end
  end
end
