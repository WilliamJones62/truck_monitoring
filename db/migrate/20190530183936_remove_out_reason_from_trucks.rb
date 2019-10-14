class RemoveOutReasonFromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :out_reason, :string
  end
end
