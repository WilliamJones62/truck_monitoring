class TruckMaintenance < ApplicationRecord
  belongs_to :truck, :foreign_key => "truck_id"
  has_many :maintenance_contacts, inverse_of: :truck_maintenance, :dependent => :destroy
  accepts_nested_attributes_for :maintenance_contacts, reject_if: proc { |attributes| attributes['company'].blank? }
  has_many :maintenance_schedules, inverse_of: :truck_maintenance, :dependent => :destroy
  accepts_nested_attributes_for :maintenance_schedules, reject_if: proc { |attributes| attributes['maint_type'].blank? }
end
