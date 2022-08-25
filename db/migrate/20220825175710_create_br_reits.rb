class CreateBrReits < ActiveRecord::Migration[7.0]
  def change
    create_table :br_reits do |t|
      t.string :ticker
      t.float :price

      t.timestamps
    end
  end
end
