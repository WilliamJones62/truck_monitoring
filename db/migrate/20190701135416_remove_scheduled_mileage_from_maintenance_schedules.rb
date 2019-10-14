class RemoveScheduledMileageFromMaintenanceSchedules < ActiveRecord::Migration[5.1]
  def change
    remove_column :maintenance_schedules, :scheduled_mileage, :integer
  end
end
