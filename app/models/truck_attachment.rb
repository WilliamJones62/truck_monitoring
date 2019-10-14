class TruckAttachment < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :truck, :foreign_key => "truck_id"
end
