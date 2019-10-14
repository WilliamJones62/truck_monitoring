class TruckLogistic < ApplicationRecord
  belongs_to :truck, :foreign_key => "truck_id"
  has_many :logistic_attachments, inverse_of: :truck_logistic, :dependent => :destroy
  accepts_nested_attributes_for :logistic_attachments
end
