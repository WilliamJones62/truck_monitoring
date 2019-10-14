class AddMaintTypeToMaintenanceSchedules < ActiveRecord::Migration[5.1]
  def change
    add_column :maintenance_schedules, :maint_type, :string
  end
end
