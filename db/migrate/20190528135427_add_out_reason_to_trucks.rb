class AddOutReasonToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :out_reason, :string
  end
end
