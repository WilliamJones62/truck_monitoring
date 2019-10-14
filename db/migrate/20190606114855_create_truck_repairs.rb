class CreateTruckRepairs < ActiveRecord::Migration[5.1]
  def change
    create_table :truck_repairs do |t|
      t.integer :truck_id
      t.date :service_in
      t.date :service_out
      t.boolean :service_status
      t.string :out_reason
      t.date :maint_date

      t.timestamps
    end
  end
end
