class AccidentVideo < ApplicationRecord
  mount_uploader :video, VideoUploader
  belongs_to :truck_accident, :foreign_key => "truck_accident_id"
end
