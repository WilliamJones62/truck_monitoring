class FinanceAttachment < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :truck_finance, :foreign_key => "truck_finance_id"
end
