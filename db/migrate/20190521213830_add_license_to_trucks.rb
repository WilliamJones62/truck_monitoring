class AddLicenseToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :license, :string
  end
end
