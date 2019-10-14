class AddServiceInToMaintenanceSchedules < ActiveRecord::Migration[5.1]
  def change
    add_column :maintenance_schedules, :service_in, :date
  end
end
