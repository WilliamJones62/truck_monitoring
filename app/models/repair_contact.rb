class RepairContact < ApplicationRecord
  belongs_to :truck_repair, :foreign_key => "truck_repair_id"
end
