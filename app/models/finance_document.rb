class FinanceDocument < ApplicationRecord
  mount_uploader :document, DocumentUploader
  belongs_to :truck_finance, :foreign_key => "truck_finance_id"
end
