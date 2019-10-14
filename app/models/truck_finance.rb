class TruckFinance < ApplicationRecord
  belongs_to :truck, :foreign_key => "truck_id"
  has_many :finance_attachments, inverse_of: :truck_finance, :dependent => :destroy
  has_many :finance_documents, inverse_of: :truck_finance, :dependent => :destroy
  accepts_nested_attributes_for :finance_attachments
  accepts_nested_attributes_for :finance_documents
end
