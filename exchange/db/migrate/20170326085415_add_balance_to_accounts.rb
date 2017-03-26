class AddBalanceToAccounts < ActiveRecord::Migration[5.0]
  def change
    add_column :accounts, :balance, :decimal, precision: 12, scale: 2
  end
end
