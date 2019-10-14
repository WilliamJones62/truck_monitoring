class TruckRepair < ApplicationRecord
  belongs_to :truck, :foreign_key => "truck_id"
  has_many :repair_attachments, inverse_of: :truck_repair, :dependent => :destroy
  accepts_nested_attributes_for :repair_attachments, reject_if: proc { |attributes| attributes['image'].blank? }
  has_many :repair_contacts, inverse_of: :truck_repair, :dependent => :destroy
  accepts_nested_attributes_for :repair_contacts, reject_if: proc { |attributes| attributes['company'].blank? }
end
