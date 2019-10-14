class CreateTruckFinances < ActiveRecord::Migration[5.1]
  def change
    create_table :truck_finances do |t|
      t.decimal :flat_rate
      t.decimal :mile_rate
      t.date :ins_expires
      t.string :wexcard
      t.string :ez_pass
      t.string :contract_type
      t.date :contract_start
      t.date :contract_end
      t.string :user_id

      t.timestamps
    end
  end
end
