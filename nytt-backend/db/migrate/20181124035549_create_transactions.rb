class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.integer :user_id
      t.integer :stock_id
      t.string :purchase_or_sale
      t.integer :quantity

      t.timestamps
    end
  end
end
