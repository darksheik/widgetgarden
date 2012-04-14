class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :product_id
      t.float :amount
      t.timestamp :from
      t.timestamp :to

      t.timestamps
    end
  end
end
