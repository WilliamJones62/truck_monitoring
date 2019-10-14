class TruckIt < ApplicationRecord
  belongs_to :truck, :foreign_key => "truck_id"
  validate :active_validation

  def active_validation
    if page_complete && (video_status != 'ACTIVE' || temp_status != 'ACTIVE')
      errors.add(:page_complete, "but monitoring is not active!")
    end
  end
end
