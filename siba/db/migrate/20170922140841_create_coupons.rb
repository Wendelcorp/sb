class CreateCoupons < ActiveRecord::Migration[5.0]
  def change
    create_table :coupons do |t|
      t.string :name
      t.integer :amount
      t.date :expiry
      t.boolean :one_use, :default => false

      t.timestamps
    end
  end
end
