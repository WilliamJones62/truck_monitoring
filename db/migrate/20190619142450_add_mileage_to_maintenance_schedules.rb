class AddMileageToMaintenanceSchedules < ActiveRecord::Migration[5.1]
  def change
    add_column :maintenance_schedules, :mileage, :integer
  end
end
