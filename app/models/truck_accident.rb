class TruckAccident < ApplicationRecord
  belongs_to :truck, :foreign_key => "truck_id"
  has_many :accident_videos, inverse_of: :truck_accident, :dependent => :destroy
  accepts_nested_attributes_for :accident_videos
  has_many :accident_attachments, inverse_of: :truck_accident, :dependent => :destroy
  accepts_nested_attributes_for :accident_attachments
  has_many :accident_contacts, inverse_of: :truck_accident, :dependent => :destroy
  accepts_nested_attributes_for :accident_contacts, reject_if: proc { |attributes| attributes['company'].blank? }
end
