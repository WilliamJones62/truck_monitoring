class Truck < ApplicationRecord
  has_many :truck_accidents, inverse_of: :truck, :dependent => :destroy
  has_many :truck_maintenances, inverse_of: :truck, :dependent => :destroy
  has_many :truck_logistics, inverse_of: :truck, :dependent => :destroy
  has_many :truck_finances, inverse_of: :truck, :dependent => :destroy
  has_many :truck_its, inverse_of: :truck, :dependent => :destroy
  has_many :truck_repairs, inverse_of: :truck, :dependent => :destroy
  has_many :truck_attachments, inverse_of: :truck, :dependent => :destroy
  accepts_nested_attributes_for :truck_attachments

  def self.import(file)
    Truck.delete_all
    CSV.foreach(file.path, headers:true) do |row|
      Truck.create! row.to_hash
    end
  end

end
