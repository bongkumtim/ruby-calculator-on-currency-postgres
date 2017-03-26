class AddExchangeToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :exchange, :decimal, precision: 14, scale: 6
  end
end
