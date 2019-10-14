class RepairAttachment < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :truck_repair, :foreign_key => "truck_repair_id"
end
