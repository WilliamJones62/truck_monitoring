class CreateTruckIts < ActiveRecord::Migration[5.1]
  def change
    create_table :truck_its do |t|
      t.string :video_status
      t.string :temp_status
      t.boolean :camera1
      t.boolean :camera2
      t.boolean :camera3
      t.boolean :dvr
      t.date :install
      t.string :install_company
      t.text :notes
      t.boolean :temp_verified

      t.timestamps
    end
  end
end
