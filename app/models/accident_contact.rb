class AccidentContact < ApplicationRecord
  belongs_to :truck_accident, :foreign_key => "truck_accident_id"
end
