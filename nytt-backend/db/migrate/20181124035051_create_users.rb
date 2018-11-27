class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.float :balance, :default => 5000.00

      t.timestamps
    end
  end
end
