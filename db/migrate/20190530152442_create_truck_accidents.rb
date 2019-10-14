class CreateTruckAccidents < ActiveRecord::Migration[5.1]
  def change
    create_table :truck_accidents do |t|
      t.integer :truck_id
      t.date :accident_date
      t.string :driver
      t.boolean :claim
      t.string :location
      t.time :accident_time
      t.text :accident_detail
      t.boolean :injury
      t.boolean :dot_recordable
      t.boolean :towed
      t.boolean :report_filed
      t.decimal :damage_estimate
      t.decimal :costs

      t.timestamps
    end
  end
end
