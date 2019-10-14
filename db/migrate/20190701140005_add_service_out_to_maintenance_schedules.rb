class AddServiceOutToMaintenanceSchedules < ActiveRecord::Migration[5.1]
  def change
    add_column :maintenance_schedules, :service_out, :date
  end
end
