class CreateFinanceDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :finance_documents do |t|
      t.integer :truck_finance_id
      t.string :document
      t.string :title

      t.timestamps
    end
  end
end
