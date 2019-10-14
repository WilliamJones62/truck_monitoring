class AccidentAttachment < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :truck_accident, :foreign_key => "truck_accident_id"
end
