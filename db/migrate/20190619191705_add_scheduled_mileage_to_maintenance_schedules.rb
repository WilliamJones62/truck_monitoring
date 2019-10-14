class AddScheduledMileageToMaintenanceSchedules < ActiveRecord::Migration[5.1]
  def change
    add_column :maintenance_schedules, :scheduled_mileage, :integer
  end
end
