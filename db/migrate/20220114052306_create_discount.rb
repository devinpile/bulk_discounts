class CreateDiscount < ActiveRecord::Migration[5.2]
  def change
    create_table :discounts do |t|
      t.string :name
      t.integer :percentage_discount
      t.integer :quantity_threshold
      t.references :merchant, foreign_key: true

      t.timestamps
    end
  end
end
