class CreateTruckLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :truck_logs do |t|
      t.string :truck_id
      t.string :video_status
      t.string :temp_status
      t.boolean :camera1
      t.boolean :camera2
      t.boolean :camera3
      t.boolean :dvr
      t.date :acquired
      t.date :disposed
      t.date :install
      t.date :deinstall
      t.string :install_company
      t.string :location
      t.text :notes
      t.string :vehicle_type

      t.timestamps
    end
  end
end
