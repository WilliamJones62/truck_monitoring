class LogisticAttachment < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :truck_logistic, :foreign_key => "truck_logistic_id"
end
