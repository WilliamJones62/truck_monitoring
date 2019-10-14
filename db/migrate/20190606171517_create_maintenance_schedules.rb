class CreateMaintenanceSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :maintenance_schedules do |t|
      t.integer :truck_maintenance_id
      t.date :scheduled_date
      t.date :actual_date

      t.timestamps
    end
  end
end
