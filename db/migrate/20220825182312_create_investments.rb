class CreateInvestments < ActiveRecord::Migration[7.0]
  def change
    create_table :investments do |t|
      t.references :portfolio, null: false, foreign_key: true
      t.belongs_to :assigned_to, polymorphic: true, null: false

      t.timestamps
    end
  end
end
