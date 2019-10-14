class MaintenanceContact < ApplicationRecord
  belongs_to :truck_maintenance, :foreign_key => "truck_maintenance_id"
end
