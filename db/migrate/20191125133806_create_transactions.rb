class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.string :category
      t.integer :user_id 
      t.string :name
      t.string :description
      t.float :amount
      t.datetime :date
      t.string :type_of_t

      t.timestamps
    end
  end
end
