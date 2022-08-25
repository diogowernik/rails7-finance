class CreateBrStocks < ActiveRecord::Migration[7.0]
  def change
    create_table :br_stocks do |t|
      t.string :ticker
      t.float :price

      t.timestamps
    end
  end
end
