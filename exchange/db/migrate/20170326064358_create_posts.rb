class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :amount
      t.integer :rate
      t.integer :account_id

      t.timestamps
    end
  end
end
